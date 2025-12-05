import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/views/auth/success_dialog.dart';
import 'package:cosmetics/core/ui/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/ui/app_button.dart';
import '../../core/ui/app_image.dart';
import '../../core/ui/Pin_code_text_field.dart';

class AccountVerifyOTPView extends StatelessWidget {
  const AccountVerifyOTPView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 46.h),
                Center(
                  child: AppImage(image: "logo.png", height: 62.h, width: 67.w),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Verify Code',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 40.h),
                Text.rich(
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff434C6D),
                  ),
                  textAlign: TextAlign.center,
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "We just sent a 4-digit verification code to\n",
                      ),
                      TextSpan(
                        text: "+20 1022658997 ",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                      TextSpan(text: "Enter the code in the box\n"),
                      TextSpan(text: "below to continue."),
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
                AppButton(
                  title: "Done",
                  onPressed: () {
                    goTo(SuccessDialog(isLogin: true));
                    ;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
