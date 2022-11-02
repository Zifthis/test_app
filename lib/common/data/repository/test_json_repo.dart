import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/data/api_data_mocked/test_json.dart';
import 'package:test_app/common/data/models/test_json_response.dart';
import 'package:test_app/common/data/repository/i_test_json_repo.dart';

final testJsonRepositoryProvider = Provider<ITestJsonRepo>(
  (ref) => TestJsonRepo(),
);

class TestJsonRepo implements ITestJsonRepo {
  TestJsonRepo();

  @override
  TestJsonResponse fetchJsonRepo() {
    final mockedResponse = testJson;
    return TestJsonResponse.fromJson(mockedResponse);
  }
}
