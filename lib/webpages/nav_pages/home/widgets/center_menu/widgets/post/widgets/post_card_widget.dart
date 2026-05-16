import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_network/image_network.dart';

import '../../../../../../../../data/post_entity.dart';
import '../../../../../../../../pages/ai_tool/productAI.dart';
import '../../../../../../../../pages/theme/styles.dart';

class PostCardWidget extends StatelessWidget {
  final PostEntity post;
  const PostCardWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        color: linkedInWhiteFFFFFF,
        border: Border.all(
            width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 55,
                      height: 55,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: Image.network("${post.userProfile}")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${post.username}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height: size.height * 0.4,
                                              width: size.width * 0.4,
                                              child: AlertDialog(
                                                title: Text('Query Box',
                                                    style: TextStyle(
                                                        color: Colors.blue)),
                                                content: StatefulBuilder(
                                                  builder: (BuildContext context,
                                                      StateSetter setState) {
                                                    return ChatScreen(
                                                        product: post);
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      icon: Icon(
                                        Icons.auto_graph,
                                        color: Colors.purple,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: const Icon(
                                    Icons.more_horiz,
                                    size: 26,
                                    color: linkedInMediumGrey86888A,
                                  ),
                                ),
                                const Icon(
                                  Icons.close,
                                  size: 26,
                                  color: linkedInMediumGrey86888A,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "${post.userBio}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 12,
                                        color: linkedInMediumGrey86888A),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add,
                                      size: 24,
                                      color: linkedInBlue0077B5,
                                    ),
                                    SizedBox(
                                      width: 2,
                                    ),
                                    Text(
                                      "Follow",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: linkedInBlue0077B5,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${post.createAt} - ",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: linkedInMediumGrey86888A),
                                ),
                                const Icon(
                                  FontAwesomeIcons.earth,
                                  size: 12,
                                  color: linkedInMediumGrey86888A,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("${post.description}"),
                post.tags!.isNotEmpty
                    ? Wrap(
                        children: post.tags!.map((tag) {
                          return Text(
                            "$tag ",
                            style: TextStyle(color: linkedInBlue0077B5),
                          );
                        }).toList(),
                      )
                    : Container(),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: ImageNetwork(
                image: post.postImage!,
                height: 300,
                width: 550,
                fitWeb: BoxFitWeb.contain),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Visibility(
                  // Show Support if available
                  visible: post.reactions![0].count !=
                      0, // Replace with your logic
                  child: Positioned(
                    child: b_singleReactItemWidget(
                        bgColor: Colors.blue.shade200,
                        iconData: FontAwesomeIcons.thumbsUp),
                  ),
                ),
                Visibility(
                  visible: post.reactions![3].count != 0,
                  child: Positioned(
                    left: 16,
                    child: b_singleReactItemWidget(
                        bgColor: Colors.red.shade300, iconData: Icons.favorite),
                  ),
                ),
                Visibility(
                  visible: post.reactions![1].count != 0,
                  child: Positioned(
                    left: 34,
                    child: b_singleReactItemWidget(
                        bgColor: Colors.green.shade300,
                        iconData: FontAwesomeIcons.handsClapping),
                  ),
                ),
                // Visibility(
                //   visible: widget.post.reactions![2].count !=
                //       0,
                //   child: Positioned(
                //     left: 34,
                //     child:b_singleReactItemWidget(
                //         bgColor: Colors.purple.shade300, iconData: FontAwesomeIcons.handsHelping),
                //   ),
                // ),

                // Visibility(
                //   visible: widget.post.reactions![4].count !=
                //       0,
                //   child: Positioned(
                //     left: 68,
                //     child:b_singleReactItemWidget(
                //         bgColor: Colors.amber.shade300, iconData: FontAwesomeIcons.lightbulb),
                //   ),
                // ),
                // Visibility(
                //   visible: widget.post.reactions![5].count !=
                //       0,
                //   child: Positioned(
                //     left: 84,
                //     child:b_singleReactItemWidget(
                //         bgColor: Colors.green.shade300, iconData:FontAwesomeIcons.solidFaceSmileBeam),
                //   ),
                // ),

                Positioned(
                  left: 60,
                  child: Text("${post.totalReacts}"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "${post.totalComments} comments - ",
                      style:  TextStyle(
                          color: linkedInMediumGrey86888ATextColor, fontSize: 15),
                    ),
                    Text(
                      "${post.totalReposts} reposts",
                      style:  TextStyle(
                          color: linkedInMediumGrey86888ATextColor, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: linkedInLightGreyCACCCE,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg/1280px-Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg")),
                  ),
                  const Icon(
                    Icons.arrow_drop_down,
                    color: linkedInMediumGrey86888A,
                  ),
                ],
              ),
              _singleActionItemWidget(
                  icon: Icons.thumb_up_alt_outlined, title: "Like"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.commentDots, title: "Comment"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.retweet, title: "Repost"),
              _singleActionItemWidget(
                  icon: FontAwesomeIcons.paperPlane, title: "Send"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  _singleActionItemWidget({IconData? icon, String? title}) {
    return Row(
      children: [
        Icon(
          icon,
          size: 22,
          color: linkedInMediumGrey86888A,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "$title",
          style: const TextStyle(color: linkedInMediumGrey86888A, fontSize: 13),
        )
      ],
    );
  }
  Widget b_singleReactItemWidget({IconData? iconData, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: linkedInWhiteCardColor)),
      child: iconData != null
          ? Icon(iconData, size: 10)
          : null, // Handle null case
    );
  }
  _singleReactItemWidget({String? image, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: linkedInWhiteFFFFFF)),
      child: Image.asset(
        "assets/$image",
        width: 6,
        height: 6,
      ),
    );
  }
}
