import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_2_plac/s3.dart';

class MyWidget3 extends ConsumerWidget {
  const MyWidget3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s3 = ref.watch(s3NotifierProvider);

    final s3Text = s3.when(data: (d) => Text(d), error: (e, s) => Text('エラー $e'), loading: () => const Text('準備中...'));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        s3Text,
        ElevatedButton(
            onPressed: () {
              final notifier = ref.read(s3NotifierProvider.notifier);
              notifier.updateState();
            },
            child: const Text('更新'))
      ],
    );
  }
}
