import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/bottom_sheet_provider.dart';
import 'package:test_app/feature/popular_movies/domain/notifier/movie_provider.dart';
import 'package:test_app/feature/popular_movies/presentation/movie_list.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    bool shouldShowList = ref.watch(getMovieListStateProvider);

    ref.listen<bool>(
      shouldDisplayBottomSheet,
      (_, next) {
        if (next = true) {
          _displayBottomSheet('error');
        } else {
          _displayBottomSheet('sns');
        }
      },
    );

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

  void _displayBottomSheet(String errorMsg) async {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Colors.amber,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(errorMsg),
                ElevatedButton(
                  child: const Text('Close BottomSheet'),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
