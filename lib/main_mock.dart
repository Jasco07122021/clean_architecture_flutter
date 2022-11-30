import 'package:clean_architecture_flutter/app.dart';
import 'package:clean_architecture_flutter/flavors_banner.dart';
import 'package:clean_architecture_flutter/flavors_setting.dart';
import 'package:clean_architecture_flutter/my_app_widget.dart';
import 'package:feature_home/feature_home.dart';

void main() {
  F.appFlavor = Flavor.mock;
  App.run(
    environment: F.env,
    appWidget: () {
      return MyApp(
        materialAppBuilder: (context, child) => FlavorBanner(
          name: F.name,
          show: true,
          child: const HomeView(),
        ),
      );
    },
  );
}
