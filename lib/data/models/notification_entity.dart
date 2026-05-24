class NotificationModel {
  final String title;
  final String message;
  final String timestamp;
  final String profileImage;
  final String notificationType;

  const NotificationModel({
    required this.title,
    this.message = "",
    required this.timestamp,
    required this.profileImage,
    required this.notificationType
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      title: json['title'] as String,
      message: json['message'] as String? ?? "",
      timestamp: json['timestamp'] as String,
      profileImage: json['profileImage'] as String,notificationType: json['notificationType'] as String

    );
  }

  @override
  String toString() {
    return 'Notification(title: $title, message: $message, timestamp: $timestamp, profileImage: $profileImage)';
  }
}