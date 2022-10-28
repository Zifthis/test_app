class ScarpBookResponse {
  final String? id;

  ScarpBookResponse({this.id});

  static ScarpBookResponse fromJson(Map<String, dynamic> scrapbookResponse) =>
      ScarpBookResponse(
        id: scrapbookResponse['id'],
      );
}
