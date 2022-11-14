import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/presentation/paged_movie_list.dart';
import 'package:test_app/generated/l10n.dart';

class MovieScreen extends ConsumerWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(S.current.movie_app),
      ),
      body: Center(
        child: Column(
          children: const [
            PagedMovieList(),
          ],
        ),
      ),
    );
  }
}
