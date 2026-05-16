
import 'package:flutter/material.dart';
import 'package:linkdinclone/webpages/nav_pages/home/widgets/left_menu/widgets/left_menu_activity_widget.dart';
import 'package:linkdinclone/webpages/nav_pages/home/widgets/left_menu/widgets/left_menu_page_widget.dart';
import 'package:linkdinclone/webpages/nav_pages/home/widgets/left_menu/widgets/left_menu_profile_widget.dart';


class HomeLeftMenu extends StatelessWidget {
  final double maxWidth;
  const HomeLeftMenu({key, required this.maxWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child:  Column(
        children: [
          LeftMenuProfileWidget(),
          // SizedBox(height: 10,),
          // LeftMenuPageWidget(),
          SizedBox(height: 10,),
          LeftMenuActivityWidget(),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
