import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/utils/color.dart';
import '../../config/utils/text_style.dart' show AppTextStyles;

Widget bottomNavigationBar(){
  return BottomNavigationBar(
    iconSize: 25.r,
    elevation: 2,
    unselectedLabelStyle: AppTextStyles.black_14_400.copyWith(color: AppColors.lightTextColor),
    selectedLabelStyle: AppTextStyles.black_14_400.copyWith(fontWeight: FontWeight.w600),
    unselectedItemColor: AppColors.greyColor,
    selectedItemColor: AppColors.secondaryColor,
    type: BottomNavigationBarType.fixed,
    items: [
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/header_logo.png", height: 25),
          label: "Home",
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/idea.svg", height: 25),
          label: "Idea"
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/category.svg", height: 25),
          label: "Category"
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/order.svg", height: 25),
          label: "Order"
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          label: "Cart"
      ),
    ],
  );
}
