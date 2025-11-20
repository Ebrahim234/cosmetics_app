
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/core/ui/app_input/view.dart';
//import 'package:cosmetics/views/app_button/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ui/app_button/view.dart';


class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 46.h),
              Center(child:  AppImage(image: "Layer.png", height:62.h , width: 67.w)),
              SizedBox(height: 40.h),
              Text(
                'Reset Password',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.h),
              ),
              Text(
                "Please enter your phone number below \n to recovery your password.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff8E8EA9)),
              ),
              SizedBox(height: 40.h),
             AppInput(withCountryCode: true,labeltext: "Phone Number",),
              SizedBox(height: 40.h),
              AppButton(title: "Next", width: 268.w,)
            ],
          ),
        ),
      ),
    );
  }
}
