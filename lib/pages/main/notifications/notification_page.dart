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
    NotificationModel(
        title: "Elon Musk",
        timestamp: "3d",
        profileImage:
            "https://imageio.forbes.com/specials-images/imageserve/63dc1b4b3ae18f6e229afec8/header-mobile/0x0.jpg?format=jpg&crop=1440,1440,x0,y0,safe&width=960",
        notificationType: "post",
        message: "commented on your post - check out"),
    NotificationModel(
        title: "AI devloper",
        timestamp: "4d",
        profileImage:
            "https://imageio.forbes.com/specials-images/imageserve/63dc1b4b3ae18f6e229afec8/header-mobile/0x0.jpg?format=jpg&crop=1440,1440,x0,y0,safe&width=960",
        notificationType: "job",
        message: ""),
    NotificationModel(
        title: "Adani: ",
        timestamp: "1w",
        profileImage:
            "https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_150,h_150/https://www.tnu.in/wp-content/uploads/2021/09/adani.jpg",
        notificationType: "job",
        message: "Promoting the use of solar lamps in rural India"),
    NotificationModel(
        title: "Bill gates",
        timestamp: "1w",
        profileImage:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Bill_Gates_2004_cr.jpg/220px-Bill_Gates_2004_cr.jpg",
        notificationType: "job",
        message: "liked your comment"),

    // Add more notifications here
    NotificationModel(
        title: "Facebook",
        timestamp: "1w",
        profileImage: "https://logo.clearbit.com/facebook.com",
        notificationType: "post",
        message: "shared a new update"),
    NotificationModel(
        title: "Amazon",
        timestamp: "1w",
        profileImage: "https://logo.clearbit.com/amazon.com",
        notificationType: "post",
        message: "announced new job openings"),
    NotificationModel(
        title: "Tesla",
        timestamp: "1w",
        profileImage: "https://logo.clearbit.com/tesla.com",
        notificationType: "job",
        message: "looking for software engineers"),
    NotificationModel(
        title: "Google",
        timestamp: "1w",
        profileImage: "https://logo.clearbit.com/google.com",
        notificationType: "job",
        message: "announced internship opportunities"),
    NotificationModel(
        title: "Apple",
        timestamp: "1w",
        profileImage: "https://logo.clearbit.com/apple.com",
        notificationType: "job",
        message: "looking for AI experts"),
    // Add more notifications as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  _singleCategoryItem(
                    title: "All",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 0;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 0,
                  ),
                  const SizedBox(width: 10),
                  _singleCategoryItem(
                    title: "My Posts",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 1;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 1,
                  ),
                  const SizedBox(width: 10),
                  _singleCategoryItem(
                    title: "Mentions",
                    onTap: () {
                      setState(() {
                        _selectedCategoryIndex = 2;
                      });
                    },
                    isSelected: _selectedCategoryIndex == 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 8,
              color: linkedInLightGreyDividerLineClr,
            ),
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return _singleNotificationWidget(notifications[index]);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _singleCategoryItem({
    required String title,
    required VoidCallback onTap,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? linkedInBlue0077B5 : linkedInWhiteCardColor,
          border: Border.all(
            color: isSelected ? linkedInBlue0077B5 : linkedInMediumGrey86888ATextColor,
            width: 1,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? linkedInWhiteCardColor : linkedInMediumGrey86888ATextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _singleNotificationWidget(NotificationModel notificationModel) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(notificationModel.profileImage),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationModel.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  notificationModel.message,
                  style: TextStyle(
                    color: linkedInMediumGrey86888ATextColor,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      size: 16,
                      color: linkedInMediumGrey86888ATextColor,
                    ),
                    SizedBox(width: 4),
                    Text(
                      notificationModel.timestamp,
                      style: TextStyle(
                        color: linkedInMediumGrey86888ATextColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
