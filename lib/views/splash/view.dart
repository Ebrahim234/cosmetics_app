import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/logic/helper_method.dart';
import '../on_boarding/view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goTo(OnBoardingView(), delayInSeconds: 3);}

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppImage(image: "logo.png", height:200.h , width: 200.w),
            SizedBox(height: 10,),
            AppImage(image: "company_name.png", height: 46.h, width: 120.w)
          ],
        ),
      ),
    );
  }
}
