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
