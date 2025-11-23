import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/auth/account_verify_otp/view.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_button/view.dart';
import '../../../core/ui/app_input/view.dart';

class CreateAccountView extends StatelessWidget {
  const CreateAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "have an account?",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff434C6D),
            ),
          ),
          TextButton(
            onPressed: () {
              goTo(LoginView());
            },
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: Color(0xffD75D72),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 48.h),
              Center(
                child: AppImage(image: "logo.png", height: 62.h, width: 67.w),
              ),
              SizedBox(height: 40.h),
              Center(
                child: Text(
                  'Create account',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff434C6D),
                  ),
                ),
              ),
              SizedBox(height: 60.h),
              AppInput(
                labeltext: "Your name",
                borderradius: 8.r,
                withCountryCode: false,
              ),
              SizedBox(height: 30.h),
              AppInput(withCountryCode: true, labeltext: "Phone Number"),
              SizedBox(height: 16.h),
              AppInput(
                hinttext: 'Create Your Password',
                borderradius: 8.r,
                withCountryCode: false,
                isPassword: true,
              ),
              SizedBox(height: 16.h),
              AppInput(
                labeltext: 'Confirm Password',
                borderradius: 8.r,
                withCountryCode: false,
                isPassword: true,
              ),
              SizedBox(height: 36.h),
              AppButton(
                title: "Next",
                onPressed: () {
                  goTo(AccountVerifyOTPView());
                },
                width: 268.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
