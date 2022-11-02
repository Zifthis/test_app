import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/doman/notifier/scrapbook_notifier/scrapbook_notifier.dart';
import 'package:test_app/doman/notifier/test_json_notifier/test_json_notifier.dart';
import 'package:test_app/doman/notifier/test_json_two_notifier/test_two_json_notifier.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrapbookState = ref.watch(getScrapbookNotifier);
    final testJsonState = ref.watch(getTestJsonNotifier);
    final testTwoJsonState = ref.watch(getTestTwoJsonNotifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          scrapbookState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const Center(child: Text('Error')),
            loaded: (value) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.scrapbook?.id ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.gold.toString()),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.notifications?.main?.toString() ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.status ?? ''),
                ],
              ),
            ),
          ),
          testJsonState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const Center(child: Text('Error')),
            loaded: (value) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  Text(value.menu!.id ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.menu!.value ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.menu?.popup?.menuItem?.first.onclick ?? ''),
                  Text(value.menu?.popup?.menuItem?.first.value ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ),
          testTwoJsonState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const Center(child: Text('Error')),
            loaded: (value) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(value.address?.city ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.address?.postCode ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.address?.state ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.address?.streetAddress ?? ''),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
