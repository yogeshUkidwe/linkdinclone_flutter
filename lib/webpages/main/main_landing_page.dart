import 'package:flutter/material.dart';
import 'package:linkdinclone/pages/theme/styles.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../pages/main/jobs/jobs_page.dart';
import '../../pages/main/network/network_page.dart';
import '../../pages/main/notifications/notification_page.dart';
import '../../responsive/responsive_layout.dart';
import '../nav_pages/home/home_page.dart';
import '../nav_pages/home/widgets/left_menu/home_left_menu.dart';
import '../nav_pages/home/widgets/right_menu/home_right_menu.dart';
import '../navbar_widget.dart';

class MainLandingPage extends StatefulWidget {
  const MainLandingPage({key});

  @override
  State<MainLandingPage> createState() => _MainLandingPageState();
}

class _MainLandingPageState extends State<MainLandingPage> {
  int _currentSelectedNavIndex = 0;

  ScrollController? _scrollController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: linkedInWhiteCardColor,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            StickyHeader(
              controller: _scrollController,
              header: NavBarWidget(onNavbarItemClickListener: (index) {
                setState(() {
                  _currentSelectedNavIndex = index;
                });
              }),
              content:
                  _switchPagesAccordingToNavbarIndex(_currentSelectedNavIndex),
            ),
          ],
        ),
      ),
    );
  }

  _switchPagesAccordingToNavbarIndex(int index) {
    switch (index) {
      case 0:
        {
          return const HomePageWeb();
        }
      case 1:
        {
          return ResponsiveLayout(
              mobileUi: Center(
                  child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  HomeLeftMenu(maxWidth: 220),
                  SizedBox(
                    width: 25,
                  ),
                  Container(height: 800, width: 500, child: NetworkPage()),
                  SizedBox(
                    width: 25,
                  ),
                  HomeRightMenu(maxWidth: 310),
                ],
              )),
              tabletUi: Center(
                  child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  HomeLeftMenu(maxWidth: 220),
                  SizedBox(
                    width: 25,
                  ),
                  Container(height: 800, width: 500, child: NetworkPage()),
                  SizedBox(
                    width: 25,
                  ),
                  HomeRightMenu(maxWidth: 310),
                ],
              )),
              smallTabletUi: Center(
                  child: Row(
                children: [
                  SizedBox(
                    width: 25,
                  ),
                  HomeLeftMenu(maxWidth: 220),
                  SizedBox(
                    width: 25,
                  ),
                  Container(height: 800, width: 500, child: NetworkPage()),
                  SizedBox(
                    width: 25,
                  ),
                  HomeRightMenu(maxWidth: 310),
                ],
              )),
              desktopUi: Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                alignment: Alignment.topCenter,
                child: Center(
                    child: Row(
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    HomeLeftMenu(maxWidth: 220),
                    SizedBox(
                      width: 25,
                    ),
                    Container(height: 800, width: 500, child: NetworkPage()),
                    SizedBox(
                      width: 25,
                    ),
                    HomeRightMenu(maxWidth: 310),
                  ],
                )),
              ));
        }
      case 2:
        {
          return JobPage();
        }
      case 3:
        {
          return Text("Messaging");
        }
      case 4:
        {
          return NotificationPage();
        }
    }
  }
}
