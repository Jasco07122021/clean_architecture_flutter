import 'package:clean_architecture_flutter/di/injector.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final locator = GetIt.instance;

@InjectableInit()
void configureDependencies(String environment) => $initGetIt(locator, environment: environment);
