import 'widgets/sliver_app_bar.dart';
import 'package:feature_home/views/home_view/widgets/sliver_banner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/sliver_category_panel.dart';
import 'widgets/sliver_fast_food_panel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: const [],
          ),
        ),
        body: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            HomeSliverAppBar(),
            HomeSliverBanner(),
            HomeSliverCategoryPanel(),
            HomeSliverFastFoodPanel(),
          ],
        ),
      ),
    );
  }
}
