
import 'package:flutter/material.dart';


import '../../../responsive/responsive_layout.dart';
import 'home_desktop_ui.dart';
import 'home_mobile_ui.dart';
import 'home_small_tablet_ui.dart';
import 'home_tablet_ui.dart';

class HomePageWeb extends StatelessWidget {
  const HomePageWeb({key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
        mobileUi: HomeMobileUi(),
        tabletUi: HomeTabletUi(),
        smallTabletUi: HomeSmallTabletUi(),
        desktopUi: HomeDesktopUi()
    );
  }
}
