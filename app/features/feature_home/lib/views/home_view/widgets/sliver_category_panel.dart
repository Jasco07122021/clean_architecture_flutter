import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeSliverCategoryPanel extends StatelessWidget {
  const HomeSliverCategoryPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      sliver: SliverPinnedHeader(
        child: ColoredBox(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: SizedBox(
              height: 45.0,
              child: ListView.separated(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 15.0);
                },
                itemCount: 5,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
