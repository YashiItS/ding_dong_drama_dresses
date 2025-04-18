import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../config/utils/color.dart';
import '../../../../../config/utils/input_decoration.dart';
import '../../../../../config/utils/text_style.dart';

PreferredSizeWidget headerWidget(GlobalKey<ScaffoldState> key) {
  return PreferredSize(
            preferredSize: Size(double.infinity, 82),
            child:
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.greyColor.withOpacity(0.5),
                      blurRadius: 2,
                      spreadRadius: 0.5,
                      offset: Offset(0, 2),
                    )
                  ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  28.verticalSpace,
                  SizedBox(
                    width: 160.r,
                    child: Row(
                      children: [
                        2.horizontalSpace,
                        Icon(Icons.location_on_outlined, size: 16.0.r),
                        2.horizontalSpace,
                        Flexible(child: Text("55, Malwa Mill, Indore, Madhya Pradesh, 452001", style: AppTextStyles.black_14_400, overflow: TextOverflow.ellipsis)),
                        2.horizontalSpace,
                        Icon(Icons.keyboard_arrow_down_sharp, size: 14.0.r),
                      ],
                    ),
                  ),
                  5.verticalSpace,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (){
                          key.currentState!.openDrawer();
                        },
                        child: Image.asset("assets/images/hamburger.png", height: 40.r)
                      ),
                      Image.asset("assets/images/header_logo.png", height: 52.r),
                      7.horizontalSpace,
                      Expanded(
                        child: SizedBox(
                          height: 40.0.r,
                          child: TextFormField(
                            cursorHeight: 18.r,
                            decoration: roundTextField(AppColors.greyColor).copyWith(
                              prefixIcon: Icon(Icons.search_outlined, size: 20.r)
                            )
                          ),
                        ),
                      ),
                      7.horizontalSpace,
                      Icon(Icons.favorite_border_outlined),
                      3.horizontalSpace,
                      Icon(Icons.notifications_none_outlined),
                      3.horizontalSpace,
                      Icon(Icons.account_circle_outlined),
                    ],
                  ),
                  8.verticalSpace,
                ],
              ),
            )
        );
}