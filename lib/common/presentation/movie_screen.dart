import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/page_provider.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/paged_notifier.dart';
import 'package:test_app/feature/popular_movies/presentation/movie_list.dart';
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
        actions: [
          PopupMenuButton<String>(
            icon: const Icon(Icons.menu),
            onSelected: (String result) {
              switch (result) {
                case 'popularityFilter':
                  break;
                case 'englishFilter':
                  break;
                case 'clearFilters':
                  break;
                default:
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                value: 'popularityFilter',
                child: const Text('Popularity'),
                onTap: () => _getPopularity(ref),
              ),
              PopupMenuItem<String>(
                value: 'englishFilter',
                child: const Text('English Language'),
                onTap: () => _getReleaseDate(ref),
              ),
              PopupMenuItem<String>(
                value: 'clearFilters',
                child: const Text('Clear Filter'),
                onTap: () => _clearFilter(ref),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: const [
            MovieList(),
          ],
        ),
      ),
    );
  }

  void _getPopularity(WidgetRef ref) {
    ref
        .watch(getPagedMovieNotifier.notifier)
        .fetchPopularMovies(ref.read(setPageProvider));
  }

  void _getReleaseDate(WidgetRef ref) {
    ref
        .read(getPagedMovieNotifier.notifier)
        .fetchEnglishLanguageMovies(ref.read(setPageProvider));
  }

  void _clearFilter(WidgetRef ref) {
    ref
        .read(getPagedMovieNotifier.notifier)
        .fetchPagedMoviesList(ref.read(setPageProvider));
  }
}
