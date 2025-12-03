import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_back.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/views/auth/create_password.dart';
//import 'package:cosmetics/views/app_button/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ui/app_button.dart';
import 'widgets/Pin_code_text_field.dart';
import 'widgets/circular_countdown_timer.dart';

class PasswordVerifyOTPView extends StatelessWidget {
  const PasswordVerifyOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AppBack(),
              SizedBox(height: 80.h),
              Center(child:
              AppImage(image: "logo.png", height:62.h, width: 67.sp)
              ),
              Text(
                'Verify Code',
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 40.h),
              Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "We just sent a 4-digit verification code to\n",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    TextSpan(
                      text: "+20 1022658997 ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    TextSpan(
                      text: "Enter the code in the box\n",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                    TextSpan(
                      text: "below to continue.",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff434C6D),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Edit the number',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.sp,
                    color: Color(0xffD75D72),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              MyPinCodeTextField(),
              CircularCountdownTimer(),
              SizedBox(height: 90.h),
              AppButton(title: "Done", width: 268.w,onPressed: (){goTo(CreatePasswordView());},),
            ],
          ),
        ),
      ),
    );
  }
}
