import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/ui/app_button.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final list = [
    _Model(
      "onboarding0.png",
      'Welcome!',
      "Makeup has the power to transform your \n  mood and empowers you to be a more \nconfident person.",

    ),
    _Model(
      "onboarding1.png",
      "SEARCH & PICK",
      "We have dedicated set of products and \n routines hand picked for every skin type.",

    ),
    _Model(
      "onboarding2.png",
      "PUCH NOTIFICATIONS ",
      "Allow notifications for new makeup & \n cosmetics offers.",

    ),
  ];
  int currentView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              if (currentView != 2)
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      goTo(LoginView());
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: currentView != 2 ? Color(0xff434C6D) : null
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 80.h),
              AppImage(image: list[currentView].image,
                height: 260.h,
                width: 280.w,
                fit: BoxFit.contain,),
              SizedBox(height: 30.h),
              Text(
                list[currentView].title,
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 10.h),
              Center(
                child: Text(
                  textAlign: TextAlign.center,
                  list[currentView].description,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff434C6D),
                  ),
                ),
              ),
              SizedBox(height: 30.sp),
              if (currentView != 2)
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xff434C6D),
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    onPressed: () {
                      currentView++;
                      setState(() {});
                    },
                    icon: AppImage(
                        image: "forward_arrow.svg", height: 18, width: 8),
                  ),
                ),
              if (currentView == 2)
               AppButton(

                 width: 268,
                  onPressed: () {
                    goTo(LoginView());
                  },
                  title: ("Let's start!"),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Model {
  final String image, title, description;

  _Model(this.image, this.title, this.description,);
}
