
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostEntity {
  // * postId
  // * postImages
  // * tags

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
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2), // Like
        Reaction(icon: FontAwesomeIcons.rocket, count: 1), // Celebrate (custom icon)
        Reaction(icon: FontAwesomeIcons.handsHelping, count: 4), // Support
        Reaction(icon: FontAwesomeIcons.heart, count: 0), // Love
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 0), // Insightful
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0), // Funny (custom icon)
      ],
    ),

    PostEntity(
        userProfile: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Atal_Bihari_Vajpayee_%28crop_2%29.jpg/330px-Atal_Bihari_Vajpayee_%28crop_2%29.jpg",
        username: "Atal Bihari Vajpayee",
        userBio: "Former Prime Minister of India",
        createAt: "25y",
        description: "The spending in science and technology need to be to increased.",
        postImage: "https://pbs.twimg.com/media/DvRGPoLXQAAlfCY.jpg",
        postImages: ["https://pbs.twimg.com/media/DvRGPoLXQAAlfCY.jpg"],
        tags: ["#sarvaShukhaAbhiyan", "#Atal", "#Education", "#India", "#science", "#pokhran", "#bharat"],
        totalReacts: 10,
        totalComments: 44,
        totalReposts: 11,
      reactions: [
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2), // Like
        Reaction(icon: FontAwesomeIcons.rocket, count: 1), // Celebrate (custom icon)
        Reaction(icon: FontAwesomeIcons.donate, count: 0), // Support
        Reaction(icon: FontAwesomeIcons.heart, count: 0), // Love
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 0), // Insightful
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0), // Funny (custom icon)
      ],
    ),

    PostEntity(
        userProfile: "https://upload.wikimedia.org/wikipedia/commons/0/0b/Swami_Vivekananda-1893-09-signed.jpg",
        username: "Swami Vivekananda",
        userBio: "Indian monastic and philosopher",
        createAt: "120y",
        description: "Whatever you think, that you will be. If you think yourselves weak, weak you will be; if you think yourselves strong, strong you will be",
        postImage: "https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-1024x1024.jpg",
        postImages: ["https://www.smilefoundationindia.org/blog/wp-content/uploads/2023/01/Celebrating-Swami-Vivekananda-Jayanti-as-National-Youth-Day-1024x1024.jpg"],
        tags: ["#youth", "#swamiVivekanand", "#yoga", "#chicago", "#proudIndi", "#India", "#Spirtual"],
        totalReacts: 111,
        totalComments: 12,
        totalReposts: 20,
      reactions: [
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2), // Like
        Reaction(icon: FontAwesomeIcons.rocket, count: 1), // Celebrate (custom icon)
        Reaction(icon: FontAwesomeIcons.handsHelping, count: 0), // Support
        Reaction(icon: FontAwesomeIcons.heart, count: 1), // Love
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 1), // Insightful
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0), // Funny (custom icon)
      ],
    ),

    PostEntity(
        userProfile: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/V._D._Savarkar.jpg/800px-V._D._Savarkar.jpg",
        username: "Veer Savarkar",
        userBio: "Swatantryaveer",
        createAt: "100y",
        description: "The practice of untouchability is a sin, a blot on humanity, and nothing can justify it",
        postImage: "https://www.scrolldroll.com/wp-content/uploads/2021/03/quotes-by-savarkar-1.jpg",
        postImages: ["https://www.scrolldroll.com/wp-content/uploads/2021/03/quotes-by-savarkar-1.jpg", "https://www.scrolldroll.com/wp-content/uploads/2021/03/quotes-by-savarkar-1.jpg", "post_image_2.jpg"],
        tags: [],
        totalReacts: 4,
        totalComments: 8,
        totalReposts: 17,
      reactions: [
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2), // Like
        Reaction(icon: FontAwesomeIcons.rocket, count: 1), // Celebrate (custom icon)
        Reaction(icon: FontAwesomeIcons.handsHelping, count: 0), // Support
        Reaction(icon: FontAwesomeIcons.heart, count: 1), // Love
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 1), // Insightful
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0), // Funny (custom icon)
      ],
    ),

    PostEntity(
        userProfile: "https://i.pinimg.com/originals/90/fb/73/90fb73dac6f02a00661146b60f279f84.jpg",
        username: "Yogi",
        userBio: "Yogi",
        createAt: "-",
        description: "Man is made by his belief. As he believes, so he is!",
        postImage: "https://www.scrolldroll.com/wp-content/uploads/2019/08/Best-Bhagavad-Gita-Quotes-20-e1688624861172.jpg",
        postImages: ["https://www.scrolldroll.com/wp-content/uploads/2019/08/Best-Bhagavad-Gita-Quotes-20-e1688624861172.jpg"],
        tags: ["#yogi", "#karm", "#dharm", "#yogicLife"],
        totalReacts: 4,
        totalComments: 8,
        totalReposts: 17,
      reactions: [
        Reaction(icon: FontAwesomeIcons.thumbsUp, count: 2), // Like
        Reaction(icon: FontAwesomeIcons.rocket, count: 1), // Celebrate (custom icon)
        Reaction(icon: FontAwesomeIcons.handsHelping, count: 0), // Support
        Reaction(icon: FontAwesomeIcons.heart, count: 1), // Love
        Reaction(icon: FontAwesomeIcons.lightbulb, count: 1), // Insightful
        Reaction(icon: FontAwesomeIcons.solidFaceSmileBeam, count: 0), // Funny (custom icon)
      ],
    ),
  ];

}
class Reaction {
  final IconData icon;
  final int count;

  Reaction({required this.icon, required this.count});
}