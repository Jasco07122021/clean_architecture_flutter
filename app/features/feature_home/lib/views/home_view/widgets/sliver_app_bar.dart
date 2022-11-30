import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeSliverAppBar extends StatelessWidget {
  const HomeSliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: DecoratedBox(
            decoration: BoxDecoration(color: Colors.grey.shade900, borderRadius: BorderRadius.circular(50.0)),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.search,
                  ),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                  onPressed: () {},
                  child: const Text('a'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
