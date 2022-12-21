import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSliverBanner extends StatelessWidget {
  const HomeSliverBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 30.0),
      sliver: SliverToBoxAdapter(
        child: CarouselSlider.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10.0),
            ),
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(itemIndex.toString()),
          ),
          options: CarouselOptions(
            height: 150,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
