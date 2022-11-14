import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/data/repository/i_movie_repository.dart';
import 'package:test_app/feature/popular_movies/data/repository/movie_repository.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_state.dart';

final getPagedMovieNotifier = StateNotifierProvider<PagedNotifier, PagedState>(
  (ref) => PagedNotifier(
    //injected
    ref.read(movieRepositoryProvider),
  ),
);

class PagedNotifier extends StateNotifier<PagedState> {
  //depend
  final IMovieRepository _movieRepository;

  PagedNotifier(
    this._movieRepository,
  ) : super(const PagedState.initial());

  Future<void> fetchMovies(int page) async {
    state = const PagedState.loading();
    final movie = await _movieRepository.getPagedPopularResponse(page);
    state = movie.fold(
      (l) => PagedState.error(l),
      (r) => PagedState.loaded(r),
    );
  }

  Future<void> fetchPopularMovies(int page) async {
    state = const PagedState.loading();
    final movie = await _movieRepository.getPagedPopularResponse(page);
    state = movie.fold(
      (l) => PagedState.error(l),
      (r) => PagedState.loaded(
        MovieResponse(
          page: page,
          result: r.result?.where((e) => e.popularity!.round() < 1000).toList(),
        ),
      ),
    );
  }

  Future<void> fetchEnglishLanguageMovies(int page) async {
    state = const PagedState.loading();
    final movie = await _movieRepository.getPagedPopularResponse(page);
    state = movie.fold(
      (l) => PagedState.error(l),
      (r) => PagedState.loaded(
        MovieResponse(
          page: page,
          result: r.result?.where((e) => e.language!.contains('en')).toList(),
        ),
      ),
    );
  }
}
