import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_popular_repo.dart';
import 'package:test_app/feature/popular_movies/data/repository/popular_repo.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_state.dart';

final getMovieNotifier = StateNotifierProvider<MovieNotifier, MovieState>(
  (ref) => MovieNotifier(
    ref.read(popularRepositoryProvider),
  ),
);

class MovieNotifier extends StateNotifier<MovieState> {
  final IPopularRepo _iPopularRepo;

  MovieNotifier(
    this._iPopularRepo,
  ) : super(const MovieState.initial()) {
    getMovie();
  }

  Future<void> getMovie() async {
    state = const MovieState.loading();
    final movie = await _iPopularRepo.getPopularResponse();
    state = MovieState.loaded(movie);
  }
}
