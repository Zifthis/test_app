import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/data/api_data_mocked/test_json_two.dart';
import 'package:test_app/data/models/test_json_two_response.dart';
import 'package:test_app/data/repository/i_test_json_two_repo.dart';

final testTwoJsonRepositoryProvider = Provider<ITestJsonTwoRepo>(
  (ref) => TestJsonTwoRepo(),
);

class TestJsonTwoRepo implements ITestJsonTwoRepo {
  TestJsonTwoRepo();

  @override
  TestJsonTwoResponse fetchTestJsonTwoRepo() {
    final mockedResponse = testJsonTwo;
    return TestJsonTwoResponse.fromJson(mockedResponse);
  }
}
