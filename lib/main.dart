import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/views/auth/login.dart';
import 'package:cosmetics/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        home: LoginView(),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: Colors.transparent,
            elevation: 0,
          ),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w),
            hintStyle: TextStyle(color: const Color(0xff8E8EA9),fontWeight: FontWeight.w400,fontSize: 12.sp),
            suffixIconColor: const Color(0xff8E8EA9),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffB3B3C1)),
                borderRadius: BorderRadius.circular(25.r)
            ),

            labelStyle: const TextStyle(color: Color(0xff8E8EA9)),
          ),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
                foregroundColor: const Color(0xffD75D72),
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                )
            ) ,
          ),
          filledButtonTheme: FilledButtonThemeData(
            style: FilledButton.styleFrom(
              backgroundColor:  Color(0xffD75D72),
              textStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w600,color:Colors.white),
              fixedSize: Size.fromHeight(65.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.r),
              ),
            ),
          ),
          cardColor: const Color(0xffD9D9D9),
          fontFamily: "Montserrat",
          scaffoldBackgroundColor: const Color(0xffD9D9D9),
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffDA498C)),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: Color(0xff434C6D)),
          ),
        ),
      ),);
  }
}