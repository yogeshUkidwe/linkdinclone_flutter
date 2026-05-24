import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:provider/provider.dart';

import '../../../data/post_entity.dart';
import '../../../providers/mainPageTransaction.dart';
import '../../home/widgets/chatAIProfile.dart';
import '../../theme/styles.dart';

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

  void initState() {
    Provider.of<MainPageTransaction>(context, listen: false).productDetail =
        widget.product.description!;
    super.initState();
  }

  void _handleSubmittedMessage() async {
    final messageText = messageController.text;
    if (messageText.isNotEmpty) {
      setState(() {
        messages.add(messageText);
        messageController.clear();
      });
    }
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