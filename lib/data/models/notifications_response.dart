class NotificationsResponse {
  final List? main;

  NotificationsResponse({this.main});

  static NotificationsResponse fromJson(
          Map<String, dynamic> notificationResponse) =>
      NotificationsResponse(
        main: notificationResponse['main'],
      );
}
