import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_button/view.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountSuccessDialogView extends StatelessWidget {
  const AccountSuccessDialogView({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffD9D9D9),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      title: Column(
        children: [
          Image.asset("assets/images/success_check.png"),
          SizedBox(height: 26.h),
          Text.rich(
            textAlign: TextAlign.center,
            TextSpan(
              children: [
                TextSpan(
                  text: "Account activated!",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff434C6D),
                  ),
                ),
                TextSpan(
                  text:
                      "Congratulations! Your account \n has been successfully activated",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff8E8EA9),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26.sp),
          AppButton(
            title: "Return to login",
            width: 268.w,
            onPressed: () {
              goTo(LoginView());
            },
          ),
        ],
      ),
    );
  }
}
