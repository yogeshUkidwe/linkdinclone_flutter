
import 'package:flutter/material.dart';

import '../../config/theme/styles.dart';


class ProfileNavBarItem extends StatefulWidget {
  final String? title;
  final IconData? icon;
  final VoidCallback? onTap;
  final bool? isProfile;
  const ProfileNavBarItem({key, this.title, this.icon, this.onTap, this.isProfile});

  @override
  State<ProfileNavBarItem> createState() => _ProfileNavBarItemState();
}

class _ProfileNavBarItemState extends State<ProfileNavBarItem> {

  bool _isHover = false;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        setState(() {
          _isHover = value;
        });
      },
      onTap: widget.onTap,
      child: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: widget.title == null ? 15 : 9),
              child: Column(
                children: [
                  widget.isProfile == true
                      ? SizedBox(
                    width: 22,
                    height: 22,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOH2aZnIHWjMQj2lQUOWIL2f4Hljgab0ecZQ&s")),
                  )
                      : Icon(Icons.grid_view_rounded, size: 22, color: _isHover == true? linkedInBlack000000 : linkedInMediumGrey86888A,),
                  const SizedBox(height: 1,),
                  Row(
                    children: [
                      widget.title == null ? Container() :Text(
                        "${widget.title}",
                        style: TextStyle(
                            color: _isHover == true? linkedInBlack000000 : linkedInMediumGrey86888A, fontSize: 12),
                      ),
                      widget.title == null ? Container() :Icon(
                        widget.icon,
                        color: _isHover ==true? linkedInBlack000000 : linkedInMediumGrey86888A,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}