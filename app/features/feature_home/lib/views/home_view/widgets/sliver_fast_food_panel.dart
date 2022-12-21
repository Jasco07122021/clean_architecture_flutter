import 'package:flutter/material.dart';

class HomeSliverFastFoodPanel extends StatelessWidget {
  const HomeSliverFastFoodPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Popular Now',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: List.generate(
                      5,
                      (index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        height: size.height * 0.3,
                        width: (size.width - 20.0 - 10.0) / 2,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          childCount: 5,
        ),
      ),
    );
  }
}
