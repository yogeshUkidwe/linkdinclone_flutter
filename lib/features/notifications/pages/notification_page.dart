import 'package:flutter/material.dart';

import '../../../data/notification_entity.dart';
import '../../theme/styles.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int _selectedCategoryIndex = 0;
  List<NotificationModel> notifications = [
    NotificationModel(
        title: "Sam Altman",
        timestamp: "1h",
        profileImage:
            "https://imageio.forbes.com/specials-images/imageserve/63dc1b4b3ae18f6e229afec8/header-mobile/0x0.jpg?format=jpg&crop=1440,1440,x0,y0,safe&width=960",
        notificationType: "post",
        message: "commented on your post - check out"),
    NotificationModel(
        title: "flutter devloper: 30+",
        timestamp: "10h",
        profileImage:
            "https://developer.microsoft.com/_devcom/images/logo-ms-social.png",
        notificationType: "job",
        message: "opportunity in india"),
    NotificationModel(
        title: "Software developer: 1",
        timestamp: "1d",
        profileImage:
            "https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_150,h_150/https://www.tnu.in/wp-content/uploads/2021/09/phi.jpg",
        notificationType: "job",
        message: "oppurtinity in Thane"),
  ];