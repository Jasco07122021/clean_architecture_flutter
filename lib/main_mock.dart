import 'package:clean_architecture_flutter/app.dart';
import 'package:clean_architecture_flutter/flavors_banner.dart';
import 'package:clean_architecture_flutter/flavors_setting.dart';
import 'package:clean_architecture_flutter/my_app_widget.dart';
import 'package:feature_home/views/home_view/home_view.dart';
import 'package:flutter/cupertino.dart';

void main() {
  F.appFlavor = Flavor.mock;
  App.run(
    environment: F.env,
    appWidget: () {
      return MyApp(
        materialAppBuilder: (context, child) => Overlay(
          initialEntries: [
            OverlayEntry(
              builder: (context) {
                return FlavorBanner(
                  name: F.name,
                  show: true,
                  child: const HomeView(),
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
