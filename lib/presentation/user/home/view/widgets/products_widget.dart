import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/utils/color.dart';
import '../../../../../config/utils/text_style.dart';

Widget productsWidget(){
  return Container(
      height: 500.r,
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
                Text("Products", style: AppTextStyles.black_16_400.copyWith(fontWeight: FontWeight.w600, color: AppColors.buttonColor)),
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
                    height: 190.r,
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
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assets/images/prd.png"),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.greyColor.withOpacity(0.5),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          )
                                        ]
                                      ),
                                      child: Icon(Icons.favorite_border_outlined, size: 19.r),
                                    ),
                                  )
                                ],
                              ),
                              Text("Summer Outfit", style: AppTextStyles.black_16_400.copyWith(fontSize: 15.r, fontWeight: FontWeight.w600)),
                              Text("D4, Palasiya", style: AppTextStyles.black_14_400.copyWith(fontSize: 13.r, fontWeight: FontWeight.w400)),
                              4.verticalSpace,
                              Row(
                                children: [
                                  Text("₹899.00", style: AppTextStyles.black_14_400.copyWith(fontSize: 15.r, fontWeight: FontWeight.w600)),
                                  5.horizontalSpace,
                                  Text("₹1100.00", style: AppTextStyles.black_14_400.copyWith(fontWeight: FontWeight.w400, color: AppColors.lightTextColor)),
                                ],
                              ),
                              5.verticalSpace,
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff056C47),
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, color: AppColors.whiteColor, size: 15.r),
                                        Text("4", style: AppTextStyles.white_12_400.copyWith(fontWeight: FontWeight.w600)),
                                      ],
                                    )
                                  ),
                                  5.horizontalSpace,
                                  Text("(682)", style: AppTextStyles.black_12_400.copyWith(fontWeight: FontWeight.w400, color: AppColors.lightTextColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColors.buttonColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(2)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.greyColor.withOpacity(0.5),
                                    blurRadius: 2,
                                    spreadRadius: 0.5,
                                  )
                                ]
                            ),
                            child: Icon(Icons.add, size: 20.r, color: AppColors.whiteColor),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 190.r,
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
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Image.asset("assets/images/prd.png"),
                                  Positioned(
                                    right: 0,
                                    top: 0,
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: AppColors.greyColor.withOpacity(0.5),
                                            blurRadius: 2,
                                            spreadRadius: 0.5,
                                          )
                                        ]
                                      ),
                                      child: Icon(Icons.favorite_border_outlined, size: 19.r),
                                    ),
                                  )
                                ],
                              ),
                              Text("Summer Outfit", style: AppTextStyles.black_16_400.copyWith(fontSize: 15.r, fontWeight: FontWeight.w600)),
                              Text("D4, Palasiya", style: AppTextStyles.black_14_400.copyWith(fontSize: 13.r, fontWeight: FontWeight.w400)),
                              4.verticalSpace,
                              Row(
                                children: [
                                  Text("₹899.00", style: AppTextStyles.black_14_400.copyWith(fontSize: 15.r, fontWeight: FontWeight.w600)),
                                  5.horizontalSpace,
                                  Text("₹1100.00", style: AppTextStyles.black_14_400.copyWith(fontWeight: FontWeight.w400, color: AppColors.lightTextColor)),
                                ],
                              ),
                              5.verticalSpace,
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xff056C47),
                                      borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, color: AppColors.whiteColor, size: 15.r),
                                        Text("4", style: AppTextStyles.white_12_400.copyWith(fontWeight: FontWeight.w600)),
                                      ],
                                    )
                                  ),
                                  5.horizontalSpace,
                                  Text("(682)", style: AppTextStyles.black_12_400.copyWith(fontWeight: FontWeight.w400, color: AppColors.lightTextColor)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: AppColors.buttonColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(10),
                                  topLeft: Radius.circular(2)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.greyColor.withOpacity(0.5),
                                    blurRadius: 2,
                                    spreadRadius: 0.5,
                                  )
                                ]
                            ),
                            child: Icon(Icons.add, size: 20.r, color: AppColors.whiteColor),
                          ),
                        )
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