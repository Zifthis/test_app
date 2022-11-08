import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_provider.dart';
import 'package:test_app/feature/popular_movies/presentation/movie_list.dart';

class MovieScreen extends ConsumerStatefulWidget {
  const MovieScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MovieScreen();
}

class _MovieScreen extends ConsumerState<MovieScreen> {
  @override
  Widget build(BuildContext context) {
    //visak
    bool shouldShowList = ref.watch(getMovieListStateProvider);

    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Movie App'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Movies'),
            ElevatedButton(
              onPressed: () =>
                  ref.read(getMovieListStateProvider.notifier).state = true,
              child: const Text('Load Movies'),
            ),
            shouldShowList ? const MovieList() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
