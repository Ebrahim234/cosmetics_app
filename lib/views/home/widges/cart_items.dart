import 'package:cosmetics/core/ui/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'counter.dart';

class CartItems extends StatefulWidget {
  const CartItems({
    super.key,
    required this.price,
    required this.description,
    required this.name,
    required this.image,
  });

  final String description, name, image, price;

  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 102.h,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Stack(
              children: [
                AppImage(image: widget.image, height: 102.h, width: 102.w),
                Positioned(bottom: 60.h,right: 60.w,
                  child: IconButton(
                      onPressed: () {},
                      icon: AppImage(image: "trash.svg", height: 18.h, width: 18.w)
                    ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    widget.name,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 12.sp,
                      color: Color(0xff3B4569BA),
                    ),
                  ),
                  Text(
                    widget.price,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12.sp),
                  ),
                  Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Counter()),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
