import 'package:test_app/data/models/notifications_response.dart';
import 'package:test_app/data/models/scrapbook_response.dart';

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

  /*factory TestMapResponse.empty() => TestMapResponse(
        gold: null,
        notifications: null,
        scrapbook: null,
        status: 'error',
      );*/

  static TestMapResponse fromJson(Map<String, dynamic> testResponse) =>
      (TestMapResponse(
        status: testResponse['status'],
        gold: testResponse['gold'],
        notifications:
            NotificationsResponse.fromJson(testResponse['notifications']),
        scrapbook: ScarpBookResponse.fromJson(testResponse['scrapbook']),
      ));
}
