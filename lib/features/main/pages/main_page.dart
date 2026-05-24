import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:linkdinclone/pages/main/widgets/app_bar_widget.dart';
import 'package:linkdinclone/pages/main/widgets/drawer_widget.dart';
import 'package:linkdinclone/provider/mainPageTransaction.dart';
import 'package:provider/provider.dart';

import '../theme/styles.dart';
import 'create/create_page.dart';
import 'home/home_page.dart';
import 'jobs/jobs_page.dart';
import 'network/network_page.dart';
import 'notifications/notification_page.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<MainPageTransaction>(
        builder: (context, dashBoardDate, child) => Scaffold(
      drawer: DrawerWidget(),
      key: _scaffoldState,
      appBar: appBarWidget(context, title: "Search", isJobsTab: false,
          onLeadingTapClickListener: () {
        setState(() {
          _scaffoldState.currentState!.openDrawer();
        });
      }),
      body: _switchPages(_currentPageIndex),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPageIndex,
          onTap: (index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          selectedItemColor: appBarNavigationColor,

          selectedLabelStyle:  TextStyle(color: appBarNavigationColor),
          unselectedItemColor: linkedInMediumGrey86888ATextColor,
          unselectedLabelStyle:
               TextStyle(color: appBarNavigationColor),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_sharp),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "My Network",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box,
                size: 30,
              ),
              label: "Post",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                size: 30,
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.work_outlined),
              label: "Jobs",
            ),
          ]),
    ));
  }

  _switchPages(int index) {
    switch (index) {
      case 0:
        {
          return const HomePage();
        }
      case 1:
        {
          return  NetworkPage();
        }
      case 2:
        {
          return CreatePage(
              onCloneClickListener: () {
                Navigator.pop(context);
                setState(() {
                  _currentPageIndex = 0;
                });
              },
              );
        }
      case 3:
        {
          return  NotificationPage();
        }
      case 4:
        {
          return  JobPage();
        }
    }
  }
}