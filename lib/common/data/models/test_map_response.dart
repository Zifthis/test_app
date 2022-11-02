class TestMapResponse {
  final String? status;
  final int? gold;
  NotificationsResponse? notifications;
  ScarpBookResponse? scrapbook;
  TestMapResponse({
    this.status,
    this.gold,
    this.notifications,
    this.scrapbook,
  });

  static TestMapResponse fromJson(Map<String, dynamic> testResponse) =>
      (TestMapResponse(
        status: testResponse['status'],
        gold: testResponse['gold'],
        notifications:
            NotificationsResponse.fromJson(testResponse['notifications']),
        scrapbook: ScarpBookResponse.fromJson(testResponse['scrapbook']),
      ));

  Map<String, dynamic> toJson(TestMapResponse testToJson) => {
        'status': testToJson.status,
        'gold': testToJson.gold,
        'notifications': testToJson.notifications,
        'scrapbook': testToJson.scrapbook,
      };
}

class NotificationsResponse {
  final List? main;

  NotificationsResponse({this.main});

  static NotificationsResponse fromJson(
          Map<String, dynamic> notificationResponse) =>
      NotificationsResponse(
        main: notificationResponse['main'],
      );

  Map<String, dynamic> toJson(NotificationsResponse notificationToJson) => {
        'main': notificationToJson.main,
      };
}

class ScarpBookResponse {
  final String? id;

  ScarpBookResponse({this.id});

  static ScarpBookResponse fromJson(Map<String, dynamic> scrapbookResponse) =>
      ScarpBookResponse(
        id: scrapbookResponse['id'],
      );

  Map<String, dynamic> toJson(ScarpBookResponse scarpBookToJson) => {
        'id': scarpBookToJson.id,
      };
}
