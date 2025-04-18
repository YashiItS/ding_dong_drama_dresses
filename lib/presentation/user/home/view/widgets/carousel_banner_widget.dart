import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/utils/color.dart';

final List<String> imageUrls = [
  'assets/images/banner1.png',
  'assets/images/banner2.png',
  'assets/images/banner3.png',
  'assets/images/banner4.png',
];

Widget carouselBannerWidget() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 11.w, horizontal: 10.w),
    decoration: BoxDecoration(
      color: AppColors.whiteColor,
    ),
    child: FlutterCarousel(
        items: imageUrls.map((url) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          );
        }).toList(),
        options: FlutterCarouselOptions(
          height: 200,
          autoPlay: true,
          enlargeCenterPage: true,
          viewportFraction: 1,
          aspectRatio: 1.7206,
          slideIndicator: CircularSlideIndicator(slideIndicatorOptions: SlideIndicatorOptions(
            currentIndicatorColor: AppColors.blackColor,
            indicatorRadius: 5,
            indicatorBackgroundColor: AppColors.greyColor.withOpacity(0.8),
            itemSpacing: 18
          )),
          autoPlayInterval: Duration(seconds: 5),
        )
    ),
  );
}