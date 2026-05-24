import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/styles.dart';
class CreatePage extends StatefulWidget {
  final VoidCallback? onCloneClickListener;
  const CreatePage({Key? key, required this.onCloneClickListener})
      : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController _postBodyController = TextEditingController();


  bool _openTwoBottomModalSheetsOnce = false;

  final FocusScopeNode _subPostBottomModalSheetFocusNode = FocusScopeNode();
  final FocusScopeNode _superPostBottomModalSheetFocusNode = FocusScopeNode();
  @override
  Widget build(BuildContext context) {
    if(_openTwoBottomModalSheetsOnce == false) {
      WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
        _createSuperPostBottomModalSheet();
        _createSubPostBottomModalSheet();
        print("value before = $_openTwoBottomModalSheetsOnce");
        setState(() {
          _openTwoBottomModalSheetsOnce = true;
        });
        print("value after = $_openTwoBottomModalSheetsOnce");
      });
    }
    return  Container();
  }

  _createSuperPostBottomModalSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (context, void Function(void Function()) setState) {
              return FocusScope(
                node: _superPostBottomModalSheetFocusNode,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        width: double.infinity,
                        height: 110,
                        decoration:
                         BoxDecoration(color: linkedInWhiteCardColor, boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              color: linkedInLightGreyDividerLineClr,
                              blurRadius: 5,
                              spreadRadius: 0.1),
                        ]),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                      onTap: widget.onCloneClickListener,
                                      child: const Icon(
                                        Icons.close_outlined,
                                        size: 30,
                                      )),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        child:ClipRRect(child:Image.network(
                                            "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg/1280px-Artificial_Intelligence_%26_AI_%26_Machine_Learning.jpg"

                                        )),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }

  _createSubPostBottomModalSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      enableDrag: false,
      isDismissible: false,
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (context, void Function(void Function()) setState) {
              return FocusScope(
                node: _subPostBottomModalSheetFocusNode,
                child: Container(),
              );
            });
      },
    );
  }
}