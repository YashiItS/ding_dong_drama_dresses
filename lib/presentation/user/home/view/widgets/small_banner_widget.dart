import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import '../../../../../config/utils/color.dart';

final List<String> imageUrls = [
  'assets/images/b1.png',
  'assets/images/b2.png',
  'assets/images/b3.png',
  'assets/images/b4.png',
  'assets/images/b5.png',
];

Widget smallBannerWidget() {
  return FlutterCarousel(
      items: imageUrls.map((url) {
        return Image.asset(
          url,
          fit: BoxFit.fitWidth,
          width: double.infinity,
        );
      }).toList(),
      options: FlutterCarouselOptions(
        height: 130,
        autoPlay: true,
        enlargeCenterPage: true,
        disableCenter: false,
        showIndicator: false,
        viewportFraction: 1,
        aspectRatio: 390/140,
        autoPlayInterval: Duration(seconds: 6),
      )
  );
}