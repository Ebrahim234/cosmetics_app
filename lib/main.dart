import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/views/auth/account_success_dialog/view.dart';
import 'package:cosmetics/views/auth/account_verify_otp/view.dart';
import 'package:cosmetics/views/auth/create_account/view.dart';
import 'package:cosmetics/views/auth/create_password/view.dart';
import 'package:cosmetics/views/auth/forgot_password/view.dart';
import 'package:cosmetics/views/auth/login/view.dart';
import 'package:cosmetics/views/auth/password_success_dialog/view.dart';
import 'package:cosmetics/views/auth/password_verify_otp/view.dart';
import 'package:cosmetics/views/checkout/view.dart';
import 'package:cosmetics/views/home/cart/view.dart';
import 'package:cosmetics/views/home/cart/widgets/cart_items.dart';
import 'package:cosmetics/views/home/categories/view.dart';
import 'package:cosmetics/views/home/profile/view.dart';
import 'package:cosmetics/views/home/view.dart';
import 'package:cosmetics/views/on_boarding/view.dart';
import 'package:cosmetics/views/splash/view.dart';
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
        home: CreateAccountView(),
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
                borderSide: const BorderSide(color: Color(0x5AB4C3B4)),
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
      ),
      child: null,
    );
  }
}