import 'package:ding_dong_drama_dresses/config/utils/color.dart';
import 'package:ding_dong_drama_dresses/config/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    SplashServices().isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: AppColors.whiteColor,
          statusBarIconBrightness: Brightness.dark
      ),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              Center(child: Image.asset('assets/images/logo.png', width: 200, height: 200)),
              Expanded(child: SizedBox()),
              Text("version 1.0.0", style: AppTextStyles.black_12_400),
              SizedBox(height: 10)
            ],
          ),
        ),
      ),
    );
  }
}