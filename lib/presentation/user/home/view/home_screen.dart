import 'package:ding_dong_drama_dresses/config/utils/color.dart';
import 'package:ding_dong_drama_dresses/config/utils/input_decoration.dart';
import 'package:ding_dong_drama_dresses/config/utils/text_style.dart';
import 'package:ding_dong_drama_dresses/presentation/component/bottom_navbar_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/carousel_banner_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/category_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/header_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/outlets_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/products_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/small_banner_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/sub_category_widget.dart';
import 'package:ding_dong_drama_dresses/presentation/user/home/view/widgets/trending_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark
      ),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: AppColors.bgColor,
        body: Column(
          children: [
            headerWidget(scaffoldKey),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    subCategoryWidget(),
                    6.verticalSpace,
                    carouselBannerWidget(),
                    6.verticalSpace,
                    categoryWidget(),
                    6.verticalSpace,
                    productsWidget(),
                    6.verticalSpace,
                    smallBannerWidget(),
                    6.verticalSpace,
                    trendingWidget(),
                    6.verticalSpace,
                    outletsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavigationBar(),
        drawer: Drawer(
          elevation: 2,
          child: Column(
            children: [
              Container(
                height: 160,
                width: double.infinity,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/drawer_header.png"))
                ),
                child: Row(
                  children: [
                    Icon(Icons.account_circle_outlined, color: AppColors.whiteColor, size: 30),
                    Text("+91 9876543210", style: AppTextStyles.white_16_400.copyWith(fontWeight: FontWeight.w600)),
                  ],
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly                ,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1
                      )
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person_outline_outlined),
                        2.horizontalSpace,
                        Text("Account"),
                        20.horizontalSpace,
                        Icon(Icons.arrow_forward_ios_outlined, size: 15),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1
                      )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/history.svg"),
                        2.horizontalSpace,
                        Text("Order History"),
                        3.horizontalSpace,
                        Icon(Icons.arrow_forward_ios_outlined, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly                ,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1
                      )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/track.svg"),
                        2.horizontalSpace,
                        Text("Track Order"),
                        3.horizontalSpace,
                        Icon(Icons.arrow_forward_ios_outlined, size: 15),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.greyColor,
                        width: 1
                      )
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/icons/return.svg"),
                        2.horizontalSpace,
                        Text("Returns"),
                        3.horizontalSpace,
                        Icon(Icons.arrow_forward_ios_outlined, size: 15),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                color: AppColors.greyColor,
                height: 1,
              ),
              3.verticalSpace,
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
              ),
              3.verticalSpace,
              ExpansionTile(
                leading: Icon(Icons.account_circle_outlined),
                title: Text("Account"),
                trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
                children: [
                  ListTile(
                    leading: Icon(Icons.location_searching_outlined),
                    title: Text("My Addresses"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
                  ),
                  3.verticalSpace,
                  ListTile(
                    leading: Icon(Icons.favorite_border_outlined),
                    title: Text("Favourites"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
                  ),
                  3.verticalSpace,
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Settings"),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
                  ),
                ],
              ),
              3.verticalSpace,
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text("About Us"),
                trailing: Icon(Icons.arrow_forward_ios_outlined, size: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}