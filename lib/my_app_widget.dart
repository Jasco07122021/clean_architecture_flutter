import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    this.materialAppBuilder,
  });

  final TransitionBuilder? materialAppBuilder;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: materialAppBuilder,
    );
  }
}
