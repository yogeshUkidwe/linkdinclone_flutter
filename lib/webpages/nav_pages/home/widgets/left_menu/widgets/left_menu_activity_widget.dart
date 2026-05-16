
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../pages/theme/styles.dart';



class LeftMenuActivityWidget extends StatelessWidget {
  const LeftMenuActivityWidget({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInWhiteFFFFFF,
          border: Border.all(width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // * Recent Activity
                const SizedBox(height: 10,),
                const Text("Recent", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Virtual Job Fair-April 25th"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "AI Community"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Flutter Community"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Made In India Products"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "MidJourney"
                ),

                // * Groups
                const SizedBox(height: 20,),
                 Text("Groups", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Flutter World Wide"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Developers only"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "LCO"
                ),

                // * Events
                const SizedBox(height: 20,),
                 Text("Events", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                    title: "Awareness of Voting"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "AI Responsibility"
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                    title: "Grow your Business"
                ),

                // * Followed Hashtags
                const SizedBox(height: 20,),
                 Text("Hashtags", style: TextStyle(fontSize: 12, color: linkedInBlue0077B5, fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "India",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "LinkdinClone",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "WhatsAppclone",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "GpayClone",
                ),
                const SizedBox(height: 6,),
                _singleActivityItem(
                  iconData: FontAwesomeIcons.hashtag,
                  title: "AIfusion",
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Divider(color: linkedInMediumGrey86888A.withOpacity(.2),),
          const SizedBox(height: 10,),
          const Center(child: Text("Discover more", style: TextStyle(fontSize: 12, color: linkedInMediumGrey86888A, fontWeight: FontWeight.bold),),),
          const SizedBox(height: 15,),

        ],
      ),
    );
  }

  _singleActivityItem({String? title, IconData? iconData = Icons.groups}) {
    return Row(
      children: [
        Icon(iconData, size: 20, color: linkedInMediumGrey86888A,),
        const SizedBox(width: 10,),
        Expanded(child: Text("$title", maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: linkedInMediumGrey86888A),)),
      ],
    );
  }
}
