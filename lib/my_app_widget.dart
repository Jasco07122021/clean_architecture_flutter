import 'package:clean_architecture_flutter/app.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
