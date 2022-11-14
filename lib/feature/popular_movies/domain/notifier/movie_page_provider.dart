import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';

final moviePageProvider = Provider<int>(
  (ref) => ref.read(getMovieNotifier).maybeMap(
        orElse: () => 0,
        loaded: (value) => value.movieResponse.page!,
      ),
);
