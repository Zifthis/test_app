import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/data/repository/cake_repo.dart';
import 'package:test_app/common/data/repository/i_cake_repo.dart';
import 'package:test_app/common/domain/notifier/cake_notifier/cake_state.dart';

final getCakeNotifier = StateNotifierProvider<ScrapbookNotifier, CakeState>(
  (ref) => ScrapbookNotifier(
    ref.read(cakeRepositoryProvider),
  ),
);

class ScrapbookNotifier extends StateNotifier<CakeState> {
  final ICakeRepo _iCakeRepo;

  ScrapbookNotifier(
    this._iCakeRepo,
  ) : super(const CakeState.initial()) {
    getScrapbook();
  }

  Future<void> getScrapbook() async {
    state = const CakeState.loading();
    final cake = _iCakeRepo.getCake();
    cake.id!.isNotEmpty
        ? state = CakeState.loaded(cake)
        : const CakeState.error('Error');
  }
}
