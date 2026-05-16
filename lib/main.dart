import 'package:flutter/material.dart';
import 'package:linkdinclone/pages/splash/splash_page.dart';
import 'package:linkdinclone/provider/mainPageTransaction.dart';
import 'package:linkdinclone/webpages/main/main_landing_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'pages/onboarding/on_boarding_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (BuildContext context) => MainPageTransaction())
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: kIsWeb
          ? MainLandingPage()
          : SplashPage(
              child: OnBoardingScreen(),
            ),
    );
  }
}
