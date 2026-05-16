import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_network/image_network.dart';

import '../../../../../../pages/theme/styles.dart';

class LeftMenuProfileWidget extends StatefulWidget {
  const LeftMenuProfileWidget({key});

  @override
  State<LeftMenuProfileWidget> createState() => _LeftMenuProfileWidgetState();
}

class _LeftMenuProfileWidgetState extends State<LeftMenuProfileWidget> {
  bool _isHoverUsername = false;
  bool _isHoverAnalyticsAndTools = false;
  bool _isHoverTryPremium = false;
  bool _isHoverMyItems = false;
  bool isSwitched = false;

  var textValue = 'Dark Mode';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: linkedInWhiteFFFFFF,
          border: Border.all(
              width: 1, color: linkedInMediumGrey86888A.withOpacity(.2)),
          borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 80,
                child: ClipRRect(
                    child: ImageNetwork(
                  image:
                      "https://static.vecteezy.com/system/resources/thumbnails/007/926/257/small/futuristic-hud-interface-technology-background-vector.jpg",
                  height: 150,
                  width: 250,
                  fitWeb: BoxFitWeb.fill,
                )),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
                                                  Navigator.of(context)
                                                      .pop(true);
                                                },
                                                child: Text("Done")),
                                          ),
                                        ],
                                      ),
                                    ],
                                    content: SingleChildScrollView(
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                          StatefulBuilder(
                                              builder: (context, setState) {
                                                return Padding(
                                                  padding:
                                                  const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Text("Mode"),
                                                      Switch(
                                                        onChanged: (bool value) {
                                                          if (isSwitched == false) {
                                                            setState(() {
                                                              isSwitched = true;
                                                              linkedInBlue0077B5 =
                                                                  Colors.black;
                                                              linkedInWhiteCardColor =
                                                                  Colors.black;
                                                              linkedInDarkGrey313335 =
                                                                  Colors.white;
                                                              textValue =
                                                              'Switch Button is ON';
                                                            });
                                                            print(
                                                                'Switch Button is ON');
                                                          } else {
                                                            setState(() {
                                                              isSwitched = false;
                                                              textValue =
                                                              'Switch Button is OFF';
                                                            });
                                                            print(
                                                                'Switch Button is OFF');
                                                          }
                                                        },
                                                        value: isSwitched,
                                                        activeColor: Colors.black,
                                                        activeTrackColor:
                                                        Colors.black45,
                                                        inactiveThumbColor:
                                                        Colors.black12,
                                                        inactiveTrackColor:
                                                        Colors.black45,
                                                      )
                                                    ],
                                                  ),
                                                );
                                              }),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("AppBar Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                      context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                    context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(
                                                                  Icons.check),
                                                            ),
                                                          ],
                                                          content:
                                                          SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child:
                                                              MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor:
                                                                linkedInBlue0077B5,
                                                                onColorChange:
                                                                    (Color
                                                                color) {
                                                                  setState(() {
                                                                    appBarNavigationColor =
                                                                        color;
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
                                                      backgroundColor:
                                                      linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color:
                                                        linkedInBlue0077B5,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Text Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                      context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                    context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(
                                                                  Icons.check),
                                                            ),
                                                          ],
                                                          content:
                                                          SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child:
                                                              MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor:
                                                                linkedInBlue0077B5,
                                                                onColorChange:
                                                                    (Color
                                                                color) {
                                                                  setState(() {
                                                                    linkedInMediumGrey86888ATextColor =
                                                                        color;
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
                                                      backgroundColor:
                                                      linkedInBlue0077B5,
                                                      child: Icon(
                                                        Icons.colorize,
                                                        color:
                                                        linkedInBlue0077B5,
                                                      )),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Background Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                      context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                    context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(
                                                                  Icons.check),
                                                            ),
                                                          ],
                                                          content:
                                                          SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child:
                                                              MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor:
                                                                linkedInBlue0077B5,
                                                                onColorChange:
                                                                    (Color
                                                                color) {
                                                                  setState(() {
                                                                    linkedInWhiteCardColor =
                                                                        color;
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
                                                      backgroundColor:
                                                      linkedInBlue0077B5,
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
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              children: [
                                                Text("Card Background Color"),
                                                TextButton(
                                                  onPressed: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                      context) {
                                                        return AlertDialog(
                                                          actions: <Widget>[
                                                            IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                    context)
                                                                    .pop(true);
                                                              },
                                                              icon: Icon(
                                                                  Icons.check),
                                                            ),
                                                          ],
                                                          content:
                                                          SingleChildScrollView(
                                                            child: Container(
                                                              height: MediaQuery.of(
                                                                  context)
                                                                  .size
                                                                  .height *
                                                                  0.35,
                                                              child:
                                                              MaterialColorPicker(
                                                                circleSize: 50,
                                                                selectedColor:
                                                                linkedInBlue0077B5,
                                                                onColorChange:
                                                                    (Color
                                                                color) {
                                                                  setState(() {
                                                                    linkedInWhiteCardColor =
                                                                        color;
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
                                                      backgroundColor:
                                                      linkedInBlue0077B5,
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
                        InkWell(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                _isHoverUsername = value;
                              });
                            },
                            child: Text(
                              "IndDevin AI",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  decoration: _isHoverUsername == true
                                      ? TextDecoration.underline
                                      : TextDecoration.none),
                            )),

                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "AI Software Developer ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: linkedInMediumGrey86888A.withOpacity(.6),
                          fontSize: 12),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: linkedInMediumGrey86888A.withOpacity(.2),
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverAnalyticsAndTools = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  color: _isHoverAnalyticsAndTools == true
                      ? linkedInLightGreyBackgroundF3F2EE
                      : Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Profile viewers ",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: linkedInDarkGrey313335),
                                children: [],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "111  ",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: "Impression",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: linkedInDarkGrey313335),
                                children: [],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "20,111",
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                                children: [],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: linkedInMediumGrey86888A.withOpacity(.2),
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverTryPremium = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  color: _isHoverTryPremium == true
                      ? linkedInLightGreyBackgroundF3F2EE
                      : Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Strengthen your profile with AI Writing Assistance",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: linkedInMediumGrey86888A.withOpacity(.6),
                            fontSize: 12),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.rectangle,
                            color: Colors.amber,
                            size: 15,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Try Premium for ₹ 0",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1,
                color: linkedInMediumGrey86888A.withOpacity(.2),
              ),
              InkWell(
                onTap: () {},
                onHover: (value) {
                  setState(() {
                    _isHoverMyItems = value;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: _isHoverMyItems == true
                          ? linkedInLightGreyBackgroundF3F2EE
                          : Colors.white,
                      borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.bookmark,
                            size: 15,
                            color: linkedInMediumGrey86888A,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "My items",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: linkedInMediumGrey86888A),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHoverUsername = value;
              });
            },
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  color: linkedInMediumGrey86888A,
                  border: Border.all(width: 3, color: linkedInWhiteFFFFFF),
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOH2aZnIHWjMQj2lQUOWIL2f4Hljgab0ecZQ&s")),
              ),
            ),
          )
        ],
      ),
    );
  }
}
