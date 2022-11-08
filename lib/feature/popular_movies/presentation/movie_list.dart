import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/movie_details/presentation/movie_details_screen.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';

class MovieList extends ConsumerWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getMovieNotifier);

    return Expanded(
      child: SizedBox(
        child: state.maybeWhen(
          initial: () => Center(
            child: ElevatedButton(
              onPressed: () =>
                  ref.read(getMovieNotifier.notifier).fetchMovies(),
              child: const Text('Load Movies'),
            ),
          ),
          error: (error) => Center(
            child: ElevatedButton(
              onPressed: () =>
                  ref.read(getMovieNotifier.notifier).fetchMovies(),
              child: Text('Error: ${error.title} try again'),
            ),
          ),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (value) => MovieListView(movieResponse: value),
          orElse: () => const Center(child: Text('Error')),
        ),
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
    return ListView.builder(
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
                  movieResponse.result?[index].voteAverage.toString() ?? '',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
                title:
                    Text(movieResponse.result?[index].title.toString() ?? ''),
              ),
            ),
          ),
        );
      },
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
