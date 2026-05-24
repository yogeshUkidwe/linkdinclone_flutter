
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkdinclone/webpages/profile_navbar_item_widget.dart';

import '../../config/theme/styles.dart';
import 'navbar_item_widget.dart';

class NavbarResponsiveRightRowWidget extends StatefulWidget {
  final Function(int) onNavbarItemClickListener;
  final bool? rowWithoutTitles;
  final bool? rowWithoutTitlesAndSpacing;
  final bool? rowWithoutTitlesAndSpacingWithMenu;

  const NavbarResponsiveRightRowWidget({key, required this.onNavbarItemClickListener, this.rowWithoutTitles, this.rowWithoutTitlesAndSpacing, this.rowWithoutTitlesAndSpacingWithMenu});

  @override
  State<NavbarResponsiveRightRowWidget> createState() => _NavbarResponsiveRightRowWidgetState();
}

class _NavbarResponsiveRightRowWidgetState extends State<NavbarResponsiveRightRowWidget> {

  int _currentSelectedNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    if (widget.rowWithoutTitles == true) {
      return buildRowWithoutTitles();
    } else if (widget.rowWithoutTitlesAndSpacing == true) {
      return buildRowWithoutTitlesAndSpacing();
    }  else if (widget.rowWithoutTitlesAndSpacingWithMenu == true) {
      return buildRowWithoutTitlesAndSpacingWithMenu();
    }  else {
      return buildNormalRow();
    }
  }

  Widget buildNormalRow() {
    return Row(
      children: [
        NabBarItemWidget(
          title: "Home",
          icon: CupertinoIcons.house_fill,
          index: 0,
          color: _currentSelectedNavIndex == 0
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 0;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 0 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "My Network",
          icon: FontAwesomeIcons.userGroup,
          index: 1,
          color: _currentSelectedNavIndex == 1
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 1;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 1 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,
        ),
        const SizedBox(
          width: 10,
        ),
        NabBarItemWidget(
          title: "Jobs",
          icon: FontAwesomeIcons.briefcase,
          index: 2,
          color: _currentSelectedNavIndex == 2
              ? linkedInBlack000000
              : linkedInMediumGrey86888A,
          onTap: () {
            setState(() {
              _currentSelectedNavIndex = 2;
            });
            widget.onNavbarItemClickListener(_currentSelectedNavIndex);
          },
          bottomBorderColor: _currentSelectedNavIndex == 2 ? linkedInBlack000000 : linkedInWhiteFFFFFF,
          borderWidth: 80,

        ),
        const SizedBox(
          width: 10,
        ),
