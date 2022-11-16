import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';

class InitialButton extends ConsumerWidget {
  const InitialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: ElevatedButton(
        onPressed: () =>
            ref.read(getPagedMovieNotifier.notifier).fetchPagedMoviesList(1),
        child: const Text('Load Movies'),
      ),
    );
  }
}
