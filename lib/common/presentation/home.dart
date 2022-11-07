import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/presentation/movie_screen.dart';
import 'package:test_app/feature/movie_details/domain/notifier/bottom_sheet_provider.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    ref.listen<bool>(
      shouldDisplayBottomSheet,
      (_, next) {
        if (next = true) {
          _displayBottomSheet('error');
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const MovieScreen();
                  }),
                );
              },
              child: const Text('Go to Movies screen'),
            ),
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
                    onPressed: () {
                      ref.read(shouldDisplayBottomSheet.notifier).state = false;
                      Navigator.pop(context);
                    }),
              ],
            ),
          ),
        );
      },
    );
  }
}
