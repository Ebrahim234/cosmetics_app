import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategorieItems extends StatelessWidget {
  const CategorieItems({super.key, required this.image, required this.title});
final String image;
final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(10),
                child: AppImage(image: image, height: 69.h, width: 64.w,fit: BoxFit.cover),),
            SizedBox(width: 12.w,),
            Expanded(child: Text(title)),
            Spacer(),
           IconButton(onPressed: (){}, icon: Image.asset("assets/icons/arrow-right.png"),)

          ],
        ),
    );
  }
}
