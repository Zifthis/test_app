import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/error/app_failure.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';

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
            onPressed: () =>
                ref.read(getPagedMovieNotifier.notifier).fetchMovies(1),
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }
}
