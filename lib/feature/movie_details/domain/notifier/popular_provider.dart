import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_state.dart';

final popularMoviesProvider = StateProvider<PagedState>((ref) {
  final movieList = ref.read(getPagedMovieNotifier);

  return movieList;
});
