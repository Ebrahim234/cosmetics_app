import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key, required this.icon, required this.title});
final String icon,title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      child: Column(

        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: AppImage(image: icon, height: 20.h, width: 20.w)),
              // SizedBox(width: 2,),
              Text(title,style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w600),),
              Spacer(),
              IconButton(onPressed: (){}, icon: AppImage(image: "forward.svg", height: 24.h, width: 24.w))
            ],
          ),
        ],
      ),
    );
  }
}
