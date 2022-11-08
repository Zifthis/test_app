import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/movie_details_notifier.dart';
import 'package:test_app/feature/movie_details/presentation/movie_details_screen.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';

class MovieList extends ConsumerWidget {
  const MovieList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(getMovieNotifier);

    return Expanded(
      child: SizedBox(
        child: state.maybeWhen(
          // initial:  button ta fečanje liste,

          //error: try again btn
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const Center(child: Text('Error')),
          // ekstraktaj widget
          loaded: (value) => ListView.builder(
            itemCount: value.result?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColoredBox(
                  color: Colors.white,
                  child: InkWell(
                    onTap: () => _onTapButton(
                        context, ref, value.result?[index].id ?? 0),
                    child: ListTile(
                      leading: const Icon(Icons.movie),
                      trailing: Text(
                        value.result?[index].voteAverage.toString() ?? '',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                        ),
                      ),
                      title: Text(value.result?[index].title.toString() ?? ''),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
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
