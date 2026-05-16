
class NetworkEntity {

  final String? userBgImage;
  final String? userProfileImage;
  final String? username;
  final String? userBio;
  final num? mutualConnections;

  NetworkEntity(
      {this.userBgImage,
      this.userProfileImage,
      this.username,
      this.userBio,
      this.mutualConnections});

  static List<NetworkEntity> networkData = [

    NetworkEntity(
      userBgImage: "https://www.azquotes.com/picture-quotes/quote-always-aim-at-perfection-for-only-then-will-you-achieve-excellence-j-r-d-tata-94-58-25.jpg",
      userProfileImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b3/35._ISC-Symposium-Ratan_N._Tata_in_der_Pause-HSGN_028-01812.JPG/330px-35._ISC-Symposium-Ratan_N._Tata_in_der_Pause-HSGN_028-01812.JPG",
      mutualConnections: 13,
      userBio: "Indian industrialist, philanthropist and former chairman of Tata Sons",
      username: "Ratan Tata",
    ),

    NetworkEntity(
      userBgImage: "https://www.persistentfoundation.org/wp-content/uploads/2021/07/persistent-foundation-seo-twitter.jpg",
      userProfileImage: "https://images.yourstory.com/cs/wordpress/2018/11/1.jpg?fm=png&auto=format",
      mutualConnections: 22,
      userBio: "Managing director of Persistent Systems",
      username: "Anand Deshpande",
    ),

    NetworkEntity(
      userBgImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/LinkedIn_Headquarters_Mountain_View.jpg/220px-LinkedIn_Headquarters_Mountain_View.jpg",
      userProfileImage: "https://hbr.org/resources/images/article_assets/2022/01/S3_E08_0105_Hoffman_THUMB_HBR-copy.jpg",
      mutualConnections: 52,
      userBio: "Co-founder and executive chairman of LinkedIn",
      username: "Reid Hoffman",
    ),

    NetworkEntity(
      userBgImage: "https://i.pinimg.com/originals/b4/b6/67/b4b6673c2a12f9982d3a93b2f01238ff.jpg",
      userProfileImage: "https://sourcesofinsight.com/wp-content/uploads/2011/06/Steve-Jobs-2.jpg",
      mutualConnections: 13,
      userBio: "Former CEO of Apple",
      username: "Steve Jobs",
    ),

    NetworkEntity(
      userBgImage: "https://media.geeksforgeeks.org/wp-content/uploads/bg-help.png",
      userProfileImage: "https://upload.wikimedia.org/wikipedia/commons/0/01/LinuxCon_Europe_Linus_Torvalds_03_%28cropped%29.jpg",
      mutualConnections: 88,
      userBio: "Creator and lead developer of the Linux kernel",
      username: "Linus Torvalds",
    ),

    NetworkEntity(
      userBgImage: "https://www.google.bg/images/branding/googlelogo/2x/googlelogo_color_160x56dp.png",
      userProfileImage: "https://img-cdn.inc.com/image/upload/w_1024,h_576,c_fill/images/panoramic/sundar-pichai-google-inc-1493186230_538103_o987ze.jpg",
      mutualConnections: 11,
      userBio: "CEO of Google",
      username: "Sundar Pichai",
    ),

    NetworkEntity(
      userBgImage: "https://imgd-ct.aeplcdn.com/1056x660/n/qy7pp0b_1638615.jpg?q=80",
      userProfileImage: "https://etimg.etb2bimg.com/photo/92209951.cms",
      mutualConnections: 13,
      userBio: "Chairperson of Mahindra and Mahindra",
      username: "Anand Mahindra",
    ),

    NetworkEntity(
      userBgImage: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/96/Microsoft_logo_%282012%29.svg/1024px-Microsoft_logo_%282012%29.svg.png",
      userProfileImage: "https://static.toiimg.com/thumb/msid-94221664,imgsize-12920,width-400,resizemode-4/94221664.jpg",
      mutualConnections: 76,
      userBio: "CEO of Microsoft",
      username: "Satya Nadela",
    ),
  ];

}