import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/utils/color.dart';
import '../../../../../config/utils/text_style.dart';

final List<Map<String, dynamic>> items = [
  {"title": "Freedom", "icon": "assets/images/sub1.png"},
  {"title": "Heroes", "icon": "assets/images/sub2.png"},
  {"title": "Trees", "icon": "assets/images/sub3.png"},
  {"title": "Animals", "icon": "assets/images/sub4.png"},
  {"title": "Cartoon", "icon": "assets/images/sub5.png"},
  {"title": "Mythological", "icon": "assets/images/sub6.png"},
  {"title": "Dress", "icon": "assets/images/sub7.png"},
  {"title": "Fantasy", "icon": "assets/images/sub8.png"},
];

Widget subCategoryWidget() {
  return Container(
      height: 105.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 11.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 65.h,
                height: 65.h,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Color(0xffE4E4E4),
                    shape: BoxShape.circle,
                ),
                child: Image.asset(items[index]["icon"]),
              ),
              Text(items[index]["title"], style: AppTextStyles.black_14_400.copyWith(fontSize: 13.sp, fontWeight: FontWeight.w500))
            ],
          );
        },
      )
  );
}
