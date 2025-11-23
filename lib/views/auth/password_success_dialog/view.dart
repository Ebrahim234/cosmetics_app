import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_button/view.dart';
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/home/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordSuccessDialogView extends StatelessWidget {
  const PasswordSuccessDialogView ({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffD9D9D9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.r)
      ),
      title: Column(
        children: [
          AppImage(image: "success_check.png", height: 100.h, width: 100.w),
          SizedBox(height: 26.h,),
          Text.rich(textAlign: TextAlign.center,
              TextSpan(
              children: [
                TextSpan(text: "Password Created!",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Color(0xff434C6D))),
                TextSpan(text: "Congratulations! Your password \n has been successfully created",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w500,color: Color(0xff8E8EA9)))
              ]
            )),
          SizedBox(height: 26.h,),
          AppButton(title: "Go to home", width: 268.w,onPressed: (){goTo(HomeView());},)
        ],
      ),
    );


  }
}
