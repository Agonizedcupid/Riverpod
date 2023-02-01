import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
  // runApp(const MyApp());
}

final helloWordProvider = Provider<String>((ref) {
  return "Hello World";
});

/// Different ways of using [Riverpod] [Providers] :
///   1. [ConsumerWidget]
///   2. [Consumer]
///   3. [ConsumerStatefulWidget] && [ConsumerState]

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helloWorldProvider = ref.watch(helloWordProvider);

    return MaterialApp(
      title: helloWorldProvider,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(),
    );
  }
}

