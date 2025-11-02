import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final list = [
    _model(
      "onboarding0.png",
      'Welcome!',
      "Makeup has the power to transform your \n  mood and empowers you to be a more \nconfident person.",
      Color(0xffD9D9D9),
    ),
    _model(
      "onboarding1.png",
      "SEARCH & PICK",
      "We have dedicated set of products and \n routines hand picked for every skin type.",
      Color(0xff434C6D),
    ),
    _model(
      "onboarding2.png",
      "PUCH NOTIFICATIONS ",
      "Allow notifications for new makeup & \n cosmetics offers.",
      Color(0xffD9D9D9),
    ),
  ];
  int currentView = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: list[currentView].color,
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
                      currentView++;
                      setState(() {});
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: currentView != 0? Colors.black: null
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 80.h),
              AppImage(image: list[currentView].image, height: 260.h, width: 280.w,fit: BoxFit.contain,),
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
                    color: currentView == 1 ? Colors.white : Color(0xff434C6D),
                  ),
                ),
              ),
              SizedBox(height: 30.sp),
              if (currentView != 2)
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: currentView == 0? Color(0xff434C6D): Color(0xffD9D9D9),
                  child: IconButton(
                    onPressed: () {
                      currentView++;
                      setState(() {});
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              if (currentView == 2)
                FilledButton(
                  onPressed: () {
                    goTo(LoginView());
                  },
                  child: Text("Let's start!"),
                  style: FilledButton.styleFrom(fixedSize: Size(268.w, 65.h)),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _model {
  final String image, title, description;
  final Color color;

  _model(this.image, this.title, this.description, this.color);
}
