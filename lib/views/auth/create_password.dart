import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_button.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/views/auth/success_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ui/app_input.dart';

class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 40.h),
              AppImage(image: "logo.png", height: 62.h, width: 67.w),
              SizedBox(height: 40.h),
              Text(
                textAlign: TextAlign.center,
                'Create Password',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24.sp,
                ),
              ),
              Text(
                "Please enter your phone number below \n to recovery your password.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff8E8EA9)),
              ),
              SizedBox(height: 80.h),
              AppInput(
                labelText: "New Password",
                borderRadius: 8,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              AppInput(
                labelText: "New Password",
                borderRadius: 8.r,
                isPassword: true,
              ),
              SizedBox(height: 70.h),
              AppButton(
                title: "Confirm",
                onPressed: () {
                 goTo(SuccessDialog(isLogin: false,),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
