import 'package:ding_dong_drama_dresses/config/utils/color.dart';
import 'package:ding_dong_drama_dresses/config/utils/text_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  Row(
          children: [
            Checkbox(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.0, color: AppColors.blackColor),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                side: BorderSide(width: 1.0, color: AppColors.blackColor),
                activeColor:AppColors.blackColor,
                checkColor: AppColors.whiteColor,
                // tristate: loginController.isChecked.value,
                // value: loginController.isChecked.value,
                onChanged: (value) {
                  // loginController.isChecked.value = value ?? false;
                }, value: true,
            ),
            const SizedBox(width: 5),
            Flexible(
              child: RichText(
                text: TextSpan(
                  text: 'By creating your account on D4 Drama Dresses you agree to the our Terms of Uses, Conditions & Privacy Policies',
                  style: AppTextStyles.black_12_400,
                  children: [
                    TextSpan(
                        text: 'D4 Drama Dresses ',
                        style: AppTextStyles.black_12_400.copyWith(color: AppColors.blackColor,fontWeight: FontWeight.bold)
                    ),
                    const TextSpan(
                        text: 'you agree to the our ',
                        style: AppTextStyles.black_12_400),
                    TextSpan(
                      text: 'Terms of Uses, Conditions & Privacy Policies',
                      style: AppTextStyles.black_12_400.copyWith(fontWeight: FontWeight.bold),

                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}