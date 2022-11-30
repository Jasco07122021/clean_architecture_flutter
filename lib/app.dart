import 'package:clean_architecture_flutter/di/injector.dart';
import 'package:clean_architecture_flutter/my_app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

class App {
  App._internal(this.environment, this.appWidget) {
    init(environment);
  }

  factory App.run({
    required Environment environment,
    required Widget Function() appWidget,
  }) {
    return App._internal(environment, appWidget);
  }

  final Environment environment;
  final Widget Function() appWidget;

  Future<void> init(Environment env) async {
    final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

    final result = await Future.wait<dynamic>([
      _initInjections(env),
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge),
      // EasyLocalization.ensureInitialized(),
    ]);

    runApp(appWidget());
  }

  Future<void> _initInjections(Environment env) async {
    configureDependencies(env.name);
  }
}
