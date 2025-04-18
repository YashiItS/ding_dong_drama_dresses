import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/utils/color.dart';
import '../../../../../config/utils/text_style.dart';

Widget outletsWidget(){
  return Container(
      height: 255.r,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.w),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Outlets", style: AppTextStyles.black_16_400.copyWith(fontWeight: FontWeight.w600, color: AppColors.buttonColor)),
                Text("all", style: AppTextStyles.black_14_400.copyWith(color: AppColors.greyColor))
              ],
            ),
          ),
          8.verticalSpace,
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 135.r,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.greyColor.withOpacity(0.5),
                            blurRadius: 2,
                            spreadRadius: 0.5,
                            offset: Offset(0, 1),
                          )
                        ]
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.greyColor.withOpacity(0.4),
                                blurRadius: 1,
                                spreadRadius: 0.3,
                              )
                            ]
                          ),
                            child: Image.asset("assets/images/outlets.png")
                        ),
                        5.verticalSpace,
                        Text("D4 Drama", style: AppTextStyles.black_14_400.copyWith(fontSize: 15.r, fontWeight: FontWeight.w600)),
                        Text("Nipaniya, Indore (M.P.)", style: AppTextStyles.black_14_400, textAlign: TextAlign.center),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      )
  );
}