import 'package:riverpod/riverpod.dart';
import 'package:test_app/common/data/api_data_mocked/test_map.dart';
import 'package:test_app/common/data/models/test_map_response.dart';
import 'package:test_app/common/data/repository/i_scrapbook_repo.dart';

final scrapbookRepositoryProvider = Provider<IScrapBookRepo>(
  (ref) => ScrapBookRepo(),
);

class ScrapBookRepo implements IScrapBookRepo {
  ScrapBookRepo();

  @override
  TestMapResponse fetchScrapbook() {
    final mockedResponse = testMap;
    return TestMapResponse.fromJson(mockedResponse);
  }
}
