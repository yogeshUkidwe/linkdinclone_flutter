
import 'package:flutter/material.dart';

import '../../../../../../pages/theme/styles.dart';
import 'follow_button_widget.dart';


class RightMenuAddFeedWidget extends StatelessWidget {
  const RightMenuAddFeedWidget({key});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: linkedInWhiteFFFFFF,
        border: Border.all(
            width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal:10, vertical: 10),
          child: Column(
            children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Linkdin news", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),),
                  Icon(Icons.info, color: linkedInMediumGrey86888A,),
                ],
              ),
              const SizedBox(height: 15,),
              _addToYourFeedSingleUserWidget("•  Loksabha polls to begin on 19 April", "  Top news"),
              const SizedBox(height: 10,),
              _addToYourFeedSingleUserWidget("•  Global Firm clash on Equity","  20h ago"),
              const SizedBox(height: 10,),
              _addToYourFeedSingleUserWidget("•  Fractional CXO in demand","  23h ago"),
              const SizedBox(height: 10,),
              _addToYourFeedSingleUserWidget("•  New Skill for boardrooms","  23h ago"),
              const SizedBox(height: 10,),
              _addToYourFeedSingleUserWidget("•  Finally Linkdin clone done-yogesh","  1h ago"),
              const SizedBox(height: 20,),
               Row(
                children: [
                  Text("Show more", style: TextStyle(fontSize: 14, color: linkedInMediumGrey86888A, fontWeight: FontWeight.w500),),
                  SizedBox(width: 2,),
                  Icon(Icons.keyboard_arrow_down_rounded, color: linkedInMediumGrey86888A, size: 20,)
                ],
              )
            ],
          )
      ),
    );
  }

  _addToYourFeedSingleUserWidget(String news,String time) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 10,
        ),
         Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                news,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                time,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    color: linkedInMediumGrey86888A),
              ),
            ],
          ),
        ),
      ],
    );
  }

}

