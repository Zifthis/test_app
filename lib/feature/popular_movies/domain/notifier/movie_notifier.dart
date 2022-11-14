import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_movie_repository.dart';
import 'package:test_app/feature/popular_movies/data/repository/movie_repository.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_state.dart';

final getMovieNotifier =
    StateNotifierProvider.autoDispose<MovieNotifier, MovieState>(
  (ref) => MovieNotifier(
    //injected
    ref.read(movieRepositoryProvider),
  ),
);

class MovieNotifier extends StateNotifier<MovieState> {
  //depend
  final IMovieRepository _iPopularRepo;

  MovieNotifier(
    this._iPopularRepo,
  ) : super(const MovieState.initial());

  Future<void> fetchMovies() async {
    state = const MovieState.loading();
    final movie = await _iPopularRepo.getPopularResponse();
    state = movie.fold(
      (l) => MovieState.error(l),
      (r) => MovieState.loaded(r),
    );
  }
}
