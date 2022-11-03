import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_app/common/domain/notifier/cake_notifier/cake_notifier.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cakeState = ref.watch(getCakeNotifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          cakeState.maybeWhen(
            loading: () => const Center(child: CircularProgressIndicator()),
            orElse: () => const Center(child: Text('Error')),
            loaded: (value) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.id.toString()),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.type.toString()),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.name.toString()),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.value.toString()),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.batters?.batter?.first.type ?? ''),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(value.topping?.last.type ?? ''),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
