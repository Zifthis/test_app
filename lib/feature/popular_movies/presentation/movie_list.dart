import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/movie_details/presentation/movie_details_screen.dart';
import 'package:test_app/feature/popular_movies/data/models/movie_response.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';

//: PRESENTATION LAYER

//5: Prezentacijski sloj koji komunicira s domenskim slojom. Domenski sloj dobiva response od podatkovnog sloja te na temelju tih podataka kreira state.
// State kreiran u domenskom sloju se zatim provajda Prezentacijskom sluju (UI elementi).
//Tom podjelom sva 3 sloja rade svoj dio posla na taj nacin je odvojena poslovna logika od UI-a

class MovieList extends ConsumerWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getMovieNotifier);

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
  const InitialButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ElevatedButton(
        onPressed: () => ref.read(getMovieNotifier.notifier).fetchMovies(),
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
