import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/feature/movie_details/domain/notifier/bottom_sheet_provider.dart';
import 'package:test_app/generated/l10n.dart';
import 'package:test_app/router/app_router.gr.dart';

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
          _displayBottomSheet(
            S.current.error_fetching_movies,
          );
        }
      },
    );

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(S.current.home),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  context.router.pushNamed(const MovieScreen().path),
              child: Text(S.current.go_to_movies_screen),
            ),
          ],
        ),
      ),
    );
  }

  void _displayBottomSheet(String title) async {
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
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ElevatedButton(
                  child: Text(S.current.close),
                  onPressed: () => context.router.pop(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
