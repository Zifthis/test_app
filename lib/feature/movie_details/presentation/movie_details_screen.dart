import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';

class MovieDetailsScreen extends ConsumerWidget {
  const MovieDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsState = ref.watch(getMovieDetailsNotifier);

    return Scaffold(
      body: detailsState.maybeWhen(
        orElse: () => const Center(child: CircularProgressIndicator()),
        loaded: (movieDetails) => Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
            ),
            child: Column(
              children: [
                Text(movieDetails.title ?? ''),
                const Text('name'),
                const Text('name'),
                const Text('name'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
