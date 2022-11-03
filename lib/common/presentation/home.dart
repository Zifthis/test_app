import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_notifier.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postState = ref.watch(getMovieNotifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: SizedBox(
        child: postState.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse: () => const Center(child: Text('Error')),
          loaded: (value) => ListView.builder(
            itemCount: value.result?.length ?? 0,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ColoredBox(
                  color: Colors.greenAccent,
                  child: ListTile(
                    leading: const Icon(Icons.list),
                    trailing: Text(
                      value.result?[index].voteAverage.toString() ?? '',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 15,
                      ),
                    ),
                    title: Text(value.result?[index].title.toString() ?? ''),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
