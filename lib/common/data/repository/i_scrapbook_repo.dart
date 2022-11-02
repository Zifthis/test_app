import 'package:test_app/common/data/models/test_map_response.dart';

abstract class IScrapBookRepo {
  TestMapResponse fetchScrapbook();
}
