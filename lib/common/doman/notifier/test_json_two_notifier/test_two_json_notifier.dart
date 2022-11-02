import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/data/repository/i_test_json_two_repo.dart';
import 'package:test_app/common/data/repository/test_json_two_repo.dart';
import 'package:test_app/common/doman/notifier/test_json_two_notifier/test_two_json_state.dart';

final getTestTwoJsonNotifier =
    StateNotifierProvider<TestTwoJsonNotifier, TestTwoJsonState>(
  (ref) => TestTwoJsonNotifier(
    ref.read(testTwoJsonRepositoryProvider),
  ),
);

class TestTwoJsonNotifier extends StateNotifier<TestTwoJsonState> {
  final ITestJsonTwoRepo _iTestJsonTwoRepo;

  TestTwoJsonNotifier(
    this._iTestJsonTwoRepo,
  ) : super(const TestTwoJsonState.initial()) {
    getTestTwoJson();
  }

  Future<void> getTestTwoJson() async {
    state = const TestTwoJsonState.loading();
    final testTwoJson = _iTestJsonTwoRepo.fetchTestJsonTwoRepo();
    testTwoJson.age != null
        ? state = TestTwoJsonState.loaded(testTwoJson)
        : const TestTwoJsonState.error('Error');
  }
}
