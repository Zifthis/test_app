import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/data/repository/i_movie_details_repo.dart';
import 'package:test_app/feature/movie_details/data/repository/movie_details_repo.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_state.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_id_provider.dart';

final getMovieDetailsNotifier =
    StateNotifierProvider.autoDispose<MovieDetailsNotifier, MovieDetailsState>(
  (ref) => MovieDetailsNotifier(
    ref.read(movieDetailsRepositoryProvider),
    ref.read(getMovieIdProvider),
  ),
);

class MovieDetailsNotifier extends StateNotifier<MovieDetailsState> {
  final IMovieDetailsRepo _iMovieDetailsRepo;
  final String _movieId;

  MovieDetailsNotifier(
    this._iMovieDetailsRepo,
    this._movieId,
  ) : super(const MovieDetailsState.initial()) {
    getMovieDetails(_movieId);
  }

  Future<void> getMovieDetails(String movieId) async {
    state = const MovieDetailsState.loading();
    final movie = await _iMovieDetailsRepo.fetchMovieDetails(movieId);
    state = MovieDetailsState.loaded(movie);
  }
}
