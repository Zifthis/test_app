import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  Future<void> fetchPagedMoviesList(int page) async {
    final movies = await _movieRepository.fetchPagedMovieResponse(page);
    state = movies.fold(
      (error) => PagedState.error(error),
      (data) => PagedState.pagingLoaded(data),
    );
  }
}
