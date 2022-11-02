import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/data/repository/i_test_json_repo.dart';
import 'package:test_app/data/repository/test_json_repo.dart';
import 'package:test_app/doman/notifier/scrapbook_notifier/scrapbook_state.dart';
import 'package:test_app/doman/notifier/test_json_notifier/test_json_state.dart';

final getTestJsonNotifier =
    StateNotifierProvider<TestJsonNotifier, TestJsonState>(
  (ref) => TestJsonNotifier(
    ref.read(testJsonRepositoryProvider),
  ),
);

class TestJsonNotifier extends StateNotifier<TestJsonState> {
  final ITestJsonRepo _iTestJsonRepo;

  TestJsonNotifier(
    this._iTestJsonRepo,
  ) : super(const TestJsonState.initial()) {
    getTestJson();
  }

  Future<void> getTestJson() async {
    state = const TestJsonState.loading();
    final testJson = _iTestJsonRepo.fetchJsonRepo();
    testJson.menu!.id!.isNotEmpty
        ? state = TestJsonState.loaded(testJson)
        : const ScrapbookState.error('Error');
  }
}
