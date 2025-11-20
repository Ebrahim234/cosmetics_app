import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_button/view.dart';
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/auth/password_verify_otp/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_input/view.dart';



class CreatePasswordView extends StatelessWidget {
  const CreatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40.h,),
                AppImage(image: "logo.png", height: 62.h, width: 67.w),
                SizedBox(height: 40.h),
                Text(
                  'Create Password',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24.sp),
                ),
                Text(
                  "Please enter your phone number below \n to recovery your password.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xff8E8EA9)),
                ),
                SizedBox(height: 80.h),
                AppInput(hinttext: "New Password",borderradius: 8,withCountryCode: false),
                SizedBox(height: 16.h),
                AppInput(hinttext: "Confirm Password",borderradius: 8,withCountryCode: false),
                SizedBox(height: 70.h),
                AppButton(title: "Confirm",onPressed: (){
                  goTo(PasswordVerifyOTPView(),canPop: false);
                }, width: 268.w,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
