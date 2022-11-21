import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';

final highRatedMoviesProvider = StateProvider<List<Result>>(
  (ref) {
    final pagedState = ref.read(getPagedMovieNotifier);
    return pagedState.maybeMap(
      orElse: () => [],
      pagingLoaded: (value) =>
          value.result.where((items) => items.voteAverage! > 7.0).toList(),
    );
  },
);
