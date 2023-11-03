import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_2_plac/my_widget.dart';

import 'my_widget_1.dart';
import 'my_widget_3.dart';

void main() {
  // アプリの宣言
  const app = MyApp();
  // ProviderScopeで囲む
  const scope = ProviderScope(child: app);
  // Run
  runApp(scope);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: Center(
          child: MyWidget3(),
        ),
      ),
    );
  }
}

