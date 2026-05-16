import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../data/post_entity.dart';
import '../../../ai_tool/productAI.dart';
import '../../../theme/styles.dart';

class SinglePostCardWidget extends StatefulWidget {
  final PostEntity post;
  const SinglePostCardWidget({key, required this.post});

  @override
  State<SinglePostCardWidget> createState() => _SinglePostCardWidgetState();
}

class _SinglePostCardWidgetState extends State<SinglePostCardWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          color: linkedInWhiteCardColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(35),
                        child: Image.network(
                          widget.post.userProfile!,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${widget.post.username} .',
                                      style:  TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,color: linkedInMediumGrey86888ATextColor),
                                    ),
                                    TextSpan(
                                      text: '1st',style: TextStyle(color: linkedInMediumGrey86888ATextColor)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: () {
                                    _openBottomModalSheet();
                                  },
                                  child: const Icon(Icons.more_vert)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                  onTap: () {
                                    _openBottomModalSheet();
                                  },
                                  child: const Icon(Icons.close)),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.post.userBio}",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  TextStyle(
                                  fontSize: 12,
                                  color: linkedInMediumGrey86888ATextColor),
                            ),
                            IconButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SizedBox(
                                        height: size.height * 0.8,
                                        width: size.width * 0.8,
                                        child: AlertDialog(
                                          title: Text('Query Box',style: TextStyle(color: Colors.blue)),
                                          content: StatefulBuilder(
                                            builder: (BuildContext context,
                                                StateSetter setState) {
                                              return ChatScreen(product: widget.post);
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
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              "${widget.post.createAt} - ",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style:  TextStyle(
                                  fontSize: 12,
                                  color: linkedInMediumGrey86888ATextColor),
                            ),
                             Icon(
                              FontAwesomeIcons.earth,
                              size: 15,
                              color: linkedInMediumGrey86888ATextColor,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "${widget.post.description}",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Wrap(
                children: widget.post.tags!.map((tag) {
                  return Text(
                    "$tag ",
                    style:  TextStyle(color: linkedInBlue0077B5),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        widget.post.postImages!.isEmpty
            ? Container(
                width: double.infinity,
                color: linkedInMediumGrey86888ATextColor,
                child: Image.network(
                  widget.post.postImage!,
                ),
              )
            : SizedBox(
                height: 400,
                child: Stack(
                  children: [
                    PageView(
                      children: widget.post.postImages!.map((image) {
                        return Container(
                          width: double.infinity,
                          color: linkedInMediumGrey86888ATextColor,
                          child: Image.network(
                            image,
                            fit: BoxFit.fill,
                          ),
                        );
                      }).toList(),
                    ),
                    Positioned(
                        right: 15,
                        top: 15,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: linkedInWhiteCardColor,
                          ),
                          child: const Center(
                            child: Icon(FontAwesomeIcons.images),
                          ),
                        ))
                  ],
                ),
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
                visible: widget.post.reactions![0].count !=
                    0, // Replace with your logic
                child: Positioned(
                  child: b_singleReactItemWidget(
                      bgColor: Colors.blue.shade200,
                      iconData: FontAwesomeIcons.thumbsUp),
                ),
              ),
              Visibility(
                visible: widget.post.reactions![3].count != 0,
                child: Positioned(
                  left: 16,
                  child: b_singleReactItemWidget(
                      bgColor: Colors.red.shade300, iconData: Icons.favorite),
                ),
              ),
              Visibility(
                visible: widget.post.reactions![1].count != 0,
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
                child: Text("${widget.post.totalReacts}"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "${widget.post.totalComments} comments - ",
                    style:  TextStyle(
                        color: linkedInMediumGrey86888ATextColor, fontSize: 15),
                  ),
                  Text(
                    "${widget.post.totalReposts} reposts",
                    style:  TextStyle(
                        color: linkedInMediumGrey86888ATextColor, fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: linkedInLightGreyDividerLineClr,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
        Container(
          width: double.infinity,
          height: 8,
          color: linkedInLightGreyDividerLineClr,
        ),
      ],
    );
  }

  _singleActionItemWidget({IconData? icon, String? title}) {
    return Column(
      children: [
        Icon(
          icon,
          color: linkedInMediumGrey86888ATextColor,
        ),
        Text(
          "$title",
          style:  TextStyle(color: linkedInMediumGrey86888ATextColor),
        )
      ],
    );
  }

  _singleReactItemWidget({String? image, Color? bgColor}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: linkedInWhiteCardColor)),
      child: Image.asset(
        "assets/$image",
        width: 10,
        height: 10,
      ),
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

  _openBottomModalSheet() {
    showModalBottomSheet(
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration:  BoxDecoration(
              color: linkedInWhiteCardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 70,
                      height: 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: linkedInMediumGrey86888ATextColor),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  _bottomNavigationItem(
                      title: "Save", iconData: Icons.bookmark_border),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Share via", iconData: Icons.share),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Unfollow", iconData: Icons.cancel),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Remove connection with Username",
                      iconData: Icons.person_remove),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Mute Username",
                      iconData: FontAwesomeIcons.soundcloud),
                  const SizedBox(
                    height: 30,
                  ),
                  _bottomNavigationItem(
                      title: "Report post", iconData: Icons.flag),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationItem({IconData? iconData, String? title}) {
    return Row(
      children: [
        Icon(
          iconData,
          size: 25,
          color: linkedInMediumGrey86888ATextColor,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "$title",
          style: TextStyle(
              fontSize: 16,
              color: linkedInMediumGrey86888ATextColor,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
