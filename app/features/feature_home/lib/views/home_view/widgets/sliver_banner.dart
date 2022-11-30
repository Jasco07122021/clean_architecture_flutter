import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeSliverBanner extends StatelessWidget {
  const HomeSliverBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: CarouselSlider.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => Container(
          child: Text(itemIndex.toString()),
        ),
        options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // onPageChanged: callbackFunction,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
