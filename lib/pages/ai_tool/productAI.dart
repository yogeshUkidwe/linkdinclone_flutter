import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:provider/provider.dart';

import '../../data/post_entity.dart';
import '../../provider/mainPageTransaction.dart';
import '../main/home/widgets/chatAIProfile.dart';
import '../theme/styles.dart';

class ChatScreen extends StatefulWidget {
  final PostEntity product;

  const ChatScreen({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  State createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<String> messages = [];
  String textOnly = "";
  GenerativeModel model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: "AIzaSyAYxDd-lVyUmhSJyCoeRL5lJeEuHrk-nFU",
  );
  final TextEditingController messageController = TextEditingController();
  final TextEditingController messageController1 = TextEditingController();
  bool isLoading = false;

  @override
  void initState() {
    Provider.of<MainPageTransaction>(context, listen: false).productDetail =
        widget.product.description!;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ChatAiProfile(
            network: widget.product,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: linkedInLightGreyDividerLineClr,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: linkedInLightGreyDividerLineClr,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: messageController,
                          onSubmitted: (text) async {},
                          decoration: InputDecoration.collapsed(
                            hintText: 'Related to ${widget.product.username} ',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () async {
                          messageController.clear();
                          setState(() {
                            isLoading = true;
                          });
                          textOnly = await Provider.of<MainPageTransaction>(
                              context,
                              listen: false)
                              .getResult("in Short",
                              "Related to  ${widget.product.username}");
                          setState(() {
                            isLoading = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: linkedInLightGreyDividerLineClr,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          controller: messageController1,
                          onSubmitted: (text) async {},
                          decoration: InputDecoration.collapsed(
                            hintText: 'Related to this Post',
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () async {
                          messageController1.clear();
                          setState(() {
                            isLoading = true;
                          });
                          textOnly = await Provider.of<MainPageTransaction>(
                                  context,
                                  listen: false)
                              .getResult("in Short",
                                  "Related to ${widget.product.description} by ${widget.product.userBio}");
                          setState(() {
                            isLoading = false;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          if (isLoading)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: CircularProgressIndicator(),
            )
          else
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
          Consumer<MainPageTransaction>(builder: (context, MyBooking, child) {
            return Container(
              height: size.height * 0.8,
              width: size.width * 0.3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Provider.of<MainPageTransaction>(context, listen: false)
                      .productDetail,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
