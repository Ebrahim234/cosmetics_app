import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckoutContainer extends StatelessWidget {
  const CheckoutContainer({
    super.key,
    required this.radius,
    required this.widget,
  });

  final double radius;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 12.w),
      width: 340.w,
      height: 65.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius.r),
        border: Border.all(color: Color(0xff73B9BB))),
      child: widget,
    );
  }
}
