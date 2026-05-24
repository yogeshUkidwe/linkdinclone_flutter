import 'package:flutter/material.dart';
import 'package:linkdinclone/pages/main/home/widgets/single_post_card_widget.dart';
import 'package:linkdinclone/pages/theme/styles.dart';

import '../../../data/post_entity.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _controller = ScrollController();

  bool _isShow = true;

  List<PostEntity> postData = PostEntity.postListData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        _isShow
            ? Container(
                width: double.infinity,
                height: 8,
                color: linkedInLightGreyDividerLineClr,
              )
            : Container(),
        Expanded(
          child: ListView.builder(
            controller: _controller,
            itemCount: postData.length,
            itemBuilder: (context, index) {
              final post = postData[index];
              return SinglePostCardWidget(post: post);
            },
          ),
        ),
      ],
    ));
  }
}