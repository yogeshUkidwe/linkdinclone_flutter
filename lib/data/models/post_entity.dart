
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostEntity {

  final List<Reaction>? reactions;
  final String? username;
  final String? userProfile;
  final String? userBio;
  final String? createAt;
  final String? description;
  final String? postImage;
  final List<String>? tags;
  final List<String>? postImages;
  final num? totalReacts;
  final num? totalComments;
  final num? totalReposts;


  PostEntity(
      {this.username,
      this.userProfile,
      this.userBio,
      this.createAt,
      this.description,
      this.postImage,
      this.tags,
      this.postImages,
      this.totalReacts,
      this.totalComments,
      this.totalReposts,
        this.reactions});

  static List<PostEntity> postListData = [
    PostEntity(
        userProfile: "https://upload.wikimedia.org/wikipedia/commons/6/6e/A._P._J._Abdul_Kalam.jpg",
        username: "A. P. J. Abdul Kalam",
        userBio: "Former President of India",
        createAt: "20y",
        description: "My 2020 Vision for India is to transform it into a developed nation. That cannot be abstract; it is a lifeline.",
        postImage: "https://s3-ap-south-1.amazonaws.com/tr-n-wp-media-uploads/exams/wp-content/uploads/2016/01/11061945/india-vision-2020.jpg",
        postImages: ["https://s3-ap-south-1.amazonaws.com/tr-n-wp-media-uploads/exams/wp-content/uploads/2016/01/11061945/india-vision-2020.jpg", "https://www.presidentofindia.gov.in/abdulkalam/sites/default/files/2023-05/11books2lr.jpg", "https://www.presidentofindia.gov.in/abdulkalam/sites/default/files/2023-05/11books2lr.jpg"],
        tags: ["#vision2020", "#india", "#developedCountry", "#DigitalIndia", "#Indians", "#agnipankh", "#Flamingo"],
        totalReacts: 5,
        totalComments: 10,
        totalReposts: 4,
      reactions: [
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2),
        Reaction(icon: FontAwesomeIcons.rocket, count: 1),
        Reaction(icon: FontAwesomeIcons.handsHelping, count: 4),
        Reaction(icon: FontAwesomeIcons.heart, count: 0),
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 0),
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0),
      ],
    ),
  ];

}
class Reaction {
  final IconData icon;
  final int count;

  Reaction({required this.icon, required this.count});
}