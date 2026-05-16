class NotificationModel {
  final String title; // Notification title (e.g., "Stephan Covey commented on your post")
  final String message; // Optional message for additional details
  final String timestamp; // Time of the notification (e.g., "1h")
  final String profileImage;
  final String notificationType;// Path to the profile image associated with the notification

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
      message: json['message'] as String? ?? "", // Handle optional message
      timestamp: json['timestamp'] as String,
      profileImage: json['profileImage'] as String,notificationType: json['notificationType'] as String

    );
  }

  @override
  String toString() {
    return 'Notification(title: $title, message: $message, timestamp: $timestamp, profileImage: $profileImage)';
  }
}
