import 'package:ding_dong_drama_dresses/config/utils/color.dart';
import 'package:ding_dong_drama_dresses/config/utils/text_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              boxShadow: [
                BoxShadow(
                  color: AppColors.greyColor.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                18.verticalSpace,
                SizedBox(
                  width: 120.r,
                  child: Row(
                    children: [
                      2.horizontalSpace,
                      Icon(EvaIcons.pin, size: 14.0.r),
                      2.horizontalSpace,
                      Flexible(child: Text("55, Malwa Mill, Indore, Madhya Pradesh, 452001", style: AppTextStyles.black_14_400, overflow: TextOverflow.ellipsis))
                    ],
                  ),
                ),
                5.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/hamburger.png", height: 42.r),
                    Image.asset("assets/images/header_logo.png", height: 50.r),
                    7.horizontalSpace,
                    Expanded(
                      child: SizedBox(
                        height: 40.0.r,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: AppColors.greyColor.withOpacity(0.4),
                              ),
                            ),
                            prefixIcon: Icon(EvaIcons.search)
                          ),
                        ),
                      ),
                    ),
                    7.horizontalSpace,
                    Icon(EvaIcons.heartOutline),
                    3.horizontalSpace,
                    Icon(EvaIcons.bellOutline),
                    3.horizontalSpace,
                    Icon(EvaIcons.shoppingCartOutline),
                  ],
                ),
                8.verticalSpace,
              ],
            ),
          ),
        ],
      )
    );
  }
}