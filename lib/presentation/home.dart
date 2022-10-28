import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/doman/notifier/scrapbook_notifier.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrapbookState = ref.watch(getScrapbookNotifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: scrapbookState.maybeWhen(
        loading: () => const Center(child: CircularProgressIndicator()),
        orElse: () => const Center(child: Text('Error')),
        loaded: (value) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
    );
  }
}
