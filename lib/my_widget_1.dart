import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_2_plac/s1.dart';

class MyWidget1 extends ConsumerWidget {
  const MyWidget1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final s1 = ref.watch(s1NotifierProvider);

    ref.listen(s1NotifierProvider, (oldState, newState) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$oldState から $newState に変わりました')),
      );
    });

    final button = ElevatedButton(
        onPressed: () {
          final notifier = ref.read(s1NotifierProvider.notifier);
          notifier.updateState();
        },
        child: const Text('s1 update'));
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [button, Text('$s1')],
    );
  }
}
