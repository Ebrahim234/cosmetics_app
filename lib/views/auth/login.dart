import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/views/auth/create_account.dart';
import 'package:cosmetics/views/auth/create_password.dart';
import 'package:cosmetics/views/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_input.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Don't have an account?"),
          TextButton(
            onPressed: () {
              goTo(CreateAccountView());
            },
            child: Text(
              'Register',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: Color(0xffD75D72),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 40.h),
              AppImage(image: "three_logos.png", height: 227.h, width: 284.w),
              SizedBox(height: 24.h),
              Center(
                child: Text(
                  'Login Now',
                  style: TextStyle(
                    color: Color(0xff434C6D),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 14.sp),
              Center(
                child: Text(
                  'Please enter the details below to continue',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8E8EA9),
                  ),
                ),
              ),
              SizedBox(height: 24.h),
              AppInput(withCountryCode: true,labelText: "Phone Number",),
              SizedBox(height: 10.h),
              AppInput(
                isPassword: true,
                labelText: "Your Password",
                borderRadius: 8,
                suffixIcon: "visibility_off.svg",
                  withCountryCode: false
              ),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {
                    goTo(CreatePasswordView());
                  },
                  child: Text('Forgot your password?'),
                ),
              ),
              SizedBox(height: 42.h),
              AppButton(
                title: "Login",
                onPressed: () {
                  goTo(HomeView(),canPop: true);
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
