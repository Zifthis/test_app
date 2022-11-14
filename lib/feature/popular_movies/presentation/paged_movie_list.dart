import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/movie_details/presentation/movie_details_screen.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier/page_provder.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier/paged_notifier.dart';

class PagedMovieList extends ConsumerStatefulWidget {
  const PagedMovieList({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PagedMovieListState();
}

class _PagedMovieListState extends ConsumerState<PagedMovieList> {
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

class InitialButton extends ConsumerWidget {
  const InitialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ElevatedButton(
        onPressed: () =>
            ref.read(getPagedMovieNotifier.notifier).fetchPagedMovies(1),
        child: const Text('Load Movies'),
      ),
    );
  }
}

class ErrorButton extends ConsumerWidget {
  final AppFailure error;
  const ErrorButton({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        children: [
          Text('Error: ${error.title}'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => ref.read(getMovieNotifier.notifier).fetchMovies(),
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}

class MovieListView extends ConsumerWidget {
  final MovieResponse movieResponse;

  const MovieListView({
    super.key,
    required this.movieResponse,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: movieResponse.result?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColoredBox(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => _onTapButton(
                        context, ref, movieResponse.result?[index].id ?? 0),
                    child: ListTile(
                      leading: const Icon(Icons.movie),
                      trailing: Text(
                        movieResponse.result?[index].voteAverage.toString() ??
                            '',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                      title: Text(
                          movieResponse.result?[index].title.toString() ?? ''),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(38.0),
          child: ElevatedButton(
              onPressed: () => ref
                  .read(getPagedMovieNotifier.notifier)
                  .fetchPagedMovies(ref.read(setPageProvider.notifier).state++),
              child: const Text('load more')),
        )
      ],
    );
  }

  void _onTapButton(BuildContext context, WidgetRef ref, int index) async {
    ref
        .read(getMovieDetailsNotifier.notifier)
        .getMovieDetails(index.toString());
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const MovieDetailsScreen();
      }),
    );
  }
}