import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

import '../../theme/styles.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  bool isSwitched = false;

  var textValue = 'Dark Mode';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * TOP AREA DRAWER - EXPANDED
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 90,
                        height: 90,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                              "https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Devin",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Row(children: [
                         Text(
                          "View profile",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: linkedInMediumGrey86888ATextColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    actions: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  // setState(() {
                                                  //   textColor = defaultTextColor;
                                                  //   themePrimarySwitch =
                                                  //       defaultThemePrimarySwitch;
                                                  //   appBarButtonColor =
                                                  //       defaultAppBarButtonColor;
                                                  //   secondaryColor = defaultSecondaryColor;
                                                  // });
                                                },
                                                child: Text("Set as Default")),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  // setState(() async {
                                                  //   final SharedPreferences prefs =
                                                  //   await SharedPreferences.getInstance();
                                                  //   prefs.setInt('BackgroundColor',
                                                  //       themePrimarySwitch.value);
                                                  // });
                                                },
                                                child: Text("Save as Theme")),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop(true);
                                                },
                                                child: Text("Done")),
                                          ),
                                        ],
                                      ),
                                    ],
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              '''Customize Theme''',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 25,
                                                  color: linkedInBlue0077B5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          StatefulBuilder(builder: (context, setState) {
                                            return Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Mode"),
                                                  Switch(
                                                    onChanged: (bool value) {
                                                      if (isSwitched == false) {
                                                        setState(() {
                                                          isSwitched = true;
                                                          linkedInBlue0077B5=Colors.black;
                                                          linkedInWhiteCardColor=Colors.black;
                                                          linkedInDarkGrey313335=Colors.white;
                                                          textValue = 'Switch Button is ON';
                                                        });
                                                        print('Switch Button is ON');
                                                      } else {
                                                        setState(() {
                                                          isSwitched = false;
                                                          textValue = 'Switch Button is OFF';
                                                        });
                                                        print('Switch Button is OFF');
                                                      }
                                                    },
                                                    value: isSwitched,
                                                    activeColor: Colors.black,
                                                    activeTrackColor: Colors.black45,
                                                    inactiveThumbColor: Colors.black12,
                                                    inactiveTrackColor: Colors.black45,
                                                  )
                                                ],
                                              ),
                                            );
                                          }),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("AppBar Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(Icons.check),
                                                            ),
                                                          ],
                                                          content: SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child: MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor: linkedInBlue0077B5,
                                                                onColorChange: (Color color) {
                                                                  setState(() {
                                                                    appBarNavigationColor = color;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor: linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color: linkedInBlue0077B5,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Text Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(Icons.check),
                                                            ),
                                                          ],
                                                          content: SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child: MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor: linkedInBlue0077B5,
                                                                onColorChange: (Color color) {
                                                                  setState(() {
                                                                    linkedInMediumGrey86888ATextColor = color;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor: linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color: linkedInBlue0077B5,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Background Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(Icons.check),
                                                            ),
                                                          ],
                                                          content: SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child: MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor:
                                                                linkedInBlue0077B5,
                                                                onColorChange: (Color color) {
                                                                  setState(() {
                                                                    linkedInWhiteCardColor = color;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor: linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color: Colors.amber,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("Card Background Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(Icons.check),
                                                            ),
                                                          ],
                                                          content: SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child: MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor: linkedInBlue0077B5,
                                                                onColorChange: (Color color) {
                                                                  setState(() {
                                                                    linkedInWhiteCardColor = color;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                  child: CircleAvatar(
                                                      backgroundColor: linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color: Colors.green,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: CircleAvatar(
                                child: Icon(
                                  Icons.color_lens,
                                  color: Colors.black,
                                ),
                                backgroundColor: Colors.amber),
                          ),
                        ),
                      ],)

                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 1,
                  color: linkedInLightGreyDividerLineClr,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: RichText(
                    text: TextSpan(
                      text:  "111  ",
                      style: const TextStyle(
                          fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black
                         ),
                      children: [
                        TextSpan(
                          text: "profile viewers",
                          style:  TextStyle(
                              fontSize: 14,fontWeight: FontWeight.w400,
                              color: linkedInMediumGrey86888ATextColor),
                          children: [],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20),
                  child: RichText(
                    text: TextSpan(
                      text:  "11,125  ",
                      style: const TextStyle(
                        fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black
                      ),
                      children: [
                        TextSpan(
                          text: "Post Impression",
                          style: const TextStyle(
                            fontSize: 14,fontWeight: FontWeight.w400,),

                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  width: double.infinity,
                  height: 1,
                  color: linkedInLightGreyDividerLineClr,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Groups",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Events",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),

          // * BOTTOM AREA DRAWER
          Container(
            width: double.infinity,
            height: 1,
            color: linkedInLightGreyDividerLineClr,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30.0, left: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 35,
                      color: linkedInMediumGrey86888ATextColor,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          color: linkedInMediumGrey86888ATextColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
