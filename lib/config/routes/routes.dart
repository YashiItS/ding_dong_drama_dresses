import 'package:ding_dong_drama_dresses/config/routes/routes_name.dart';
import 'package:flutter/material.dart';
import '../../presentation/views.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name) {
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case RoutesName.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case RoutesName.otpScreen:
        return MaterialPageRoute(builder: (_) => OTPScreen());
      case RoutesName.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text('Page is not found'),
            ),
          );
        });
    }
  }
}