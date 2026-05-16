import 'package:flutter/material.dart';
import 'package:image_network/image_network.dart';
import 'package:linkdinclone/data/post_entity.dart';

import '../../../../data/network_entity.dart';
import '../../../theme/styles.dart';

class ChatAiProfile extends StatefulWidget {
  final PostEntity network;
  const ChatAiProfile({Key? key, required this.network}) : super(key: key);

  @override
  State<ChatAiProfile> createState() => _ChatAiProfileState();
}

class _ChatAiProfileState extends State<ChatAiProfile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: linkedInLightGreyDividerLineClr,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                ),
                child: ImageNetwork(
                 image:  widget.network.postImage!,width: 400,height: 100,fitWeb: BoxFitWeb.fill,

                ),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "${widget.network.username}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: linkedInBlue0077B5),
                ),
              ),
              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  "${widget.network.userBio}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: linkedInMediumGrey86888ATextColor),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: linkedInDarkGrey313335,
                shape: BoxShape.circle,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.network(
                  widget.network.userProfile!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
