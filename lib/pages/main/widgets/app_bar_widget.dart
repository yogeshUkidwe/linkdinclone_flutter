
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../theme/styles.dart';

PreferredSizeWidget appBarWidget(BuildContext context, {VoidCallback? onLeadingTapClickListener, String? title, bool? isJobsTab}) {
  return AppBar(
    backgroundColor: appBarNavigationColor,
    elevation: 0,
    leading: GestureDetector(
      onTap: onLeadingTapClickListener,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(borderRadius: BorderRadius.circular(50),child:Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg/1280px-Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg"

        )),
      ),
    ),
    title: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInLightGreyDividerLineClr.withOpacity(.5),
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "$title",
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search)),
      ),
    ),
    actions: [
      isJobsTab == false?GestureDetector(
        onTap: () {
        },
        child:  Icon(
          FontAwesomeIcons.solidCommentDots,
          size: 35,
          color: linkedInMediumGrey86888ATextColor,
        ),
      ) :  Row(
        children: [
          Icon(Icons.more_vert, size: 35, color: linkedInMediumGrey86888ATextColor,),
          SizedBox(width: 10,),
          Icon(
            FontAwesomeIcons.solidCommentDots,
            size: 35,
            color: linkedInMediumGrey86888ATextColor,
          )
        ],
      ),
      const SizedBox(
        width: 10,
      )
    ],
  );
}