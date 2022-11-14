import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_state.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_movie_repository.dart';
import 'package:test_app/feature/popular_movies/data/repository/movie_repository.dart';

final getMovieDetailsNotifier =
    StateNotifierProvider<MovieDetailsNotifier, MovieDetailsState>(
  (ref) => MovieDetailsNotifier(
    ref.read(movieRepositoryProvider),
  ),
);

class MovieDetailsNotifier extends StateNotifier<MovieDetailsState> {
  final IMovieRepository _iMovieDetailsRepo;

  MovieDetailsNotifier(
    this._iMovieDetailsRepo,
  ) : super(const MovieDetailsState.initial());

  Future<void> getMovieDetails(int page, int movieId) async {
    state = const MovieDetailsState.loading();
    final movie = await _iMovieDetailsRepo.fetchMovieDetails(page, movieId);
    state = movie.fold(
      (l) => MovieDetailsState.error(l),
      (r) => MovieDetailsState.loaded(r),
    );
  }
}
