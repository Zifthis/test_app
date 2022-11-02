import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/data/repository/i_scrapbook_repo.dart';
import 'package:test_app/common/data/repository/scrapbook_repo.dart';
import 'package:test_app/common/domain/notifier/scrapbook_notifier/scrapbook_state.dart';

final getScrapbookNotifier =
    StateNotifierProvider<ScrapbookNotifier, ScrapbookState>(
  (ref) => ScrapbookNotifier(
    ref.read(scrapbookRepositoryProvider),
  ),
);

class ScrapbookNotifier extends StateNotifier<ScrapbookState> {
  final IScrapBookRepo _iScrapBookRepo;

  ScrapbookNotifier(
    this._iScrapBookRepo,
  ) : super(const ScrapbookState.initial()) {
    getScrapbook();
  }

  Future<void> getScrapbook() async {
    state = const ScrapbookState.loading();
    final scrapbook = _iScrapBookRepo.fetchScrapbook();
    scrapbook.gold != null
        ? state = ScrapbookState.loaded(scrapbook)
        : const ScrapbookState.error('Error');
  }
}
