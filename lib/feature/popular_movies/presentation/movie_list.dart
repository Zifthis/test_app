import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/error_button.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/initial_button.dart';
import 'package:test_app/feature/popular_movies/presentation/widgets/movie_list_view.dart';

class MovieList extends ConsumerStatefulWidget {
  const MovieList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PagedMovieListState();
}

class _PagedMovieListState extends ConsumerState<MovieList> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(getPagedMovieNotifier);

    return Expanded(
      child: SizedBox(
        child: state.maybeWhen(
          initial: () => const InitialButton(),
          error: (error) => ErrorButton(error: error),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (value) => MovieListView(movieResponse: value),
          orElse: () => const Center(child: Text('Error')),
        ),
      ),
    );
  }
}
