import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/data/api_data_mocked/cake_json.dart';
import 'package:test_app/common/data/models/cake_json_response.dart';
import 'package:test_app/common/data/repository/i_cake_repo.dart';

final cakeRepositoryProvider = Provider<ICakeRepo>(
  (ref) => CakeRepo(),
);

class CakeRepo implements ICakeRepo {
  CakeRepo();
  @override
  CakeJsonResponse getCake() {
    final mockedResponse = cakeJson;
    return CakeJsonResponse.fromJson(mockedResponse);
  }
}
