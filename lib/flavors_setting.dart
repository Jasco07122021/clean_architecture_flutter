import 'package:injectable/injectable.dart';

enum Flavor { prod, mock, dev }

mixin F {
  static late Flavor appFlavor;

  static String get name => appFlavor.name;

  static Environment get env {
    switch (appFlavor) {
      case Flavor.prod:
        return envProd;
      case Flavor.mock:
        return envMock;
      case Flavor.dev:
        return envDev;
    }
  }

  static String get appName {
    switch (appFlavor) {
      case Flavor.prod:
        return 'Clean Architecture Prod';
      case Flavor.dev:
        return 'Clean Architecture Dev';
      case Flavor.mock:
        return 'Clean Architecture Mock';
    }
  }
}

const Environment envMock = Environment('mock');
const Environment envDev = Environment('dev');
const Environment envBeta = Environment('beta');
const Environment envProd = Environment('prod');
