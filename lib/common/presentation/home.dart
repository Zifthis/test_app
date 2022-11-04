import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_provider.dart';
import 'package:test_app/feature/popular_movies/presentation/movie_list.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool shouldShowList = ref.watch(getMovieListStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Movies'),
            ElevatedButton(
              onPressed: () =>
                  ref.read(getMovieListStateProvider.notifier).state = true,
              child: const Text('Fetch Movies'),
            ),
            shouldShowList ? const MovieList() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
