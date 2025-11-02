import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/core/ui/app_input/view.dart';
import 'package:cosmetics/views/home/home_page/widgets/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 46.h,
                  child: AppInput(),
                ),
                SizedBox(height: 14.h),
                AppImage(
                  image: "makeup.png",
                  height: 320.h,
                  width: double.infinity,
                ),
                SizedBox(height: 24.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Top rated products",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
                  ),
                ),
                SizedBox(height: 14.h),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 176 / 237,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                  ),
                  itemBuilder: (context, index) =>
                      _item(product: productList[index]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _item extends StatelessWidget {
  final ProductModel product;

  const _item({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 10,
            spreadRadius: 0,
            color: Colors.black.withValues(alpha: 0.25),
          ),
        ],
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
AppImage(image: product.image, height: 169.h, width: 161.w),
          Text(product.title,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14.sp),),
          Text(product.price,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12.sp,color: Color(0xff70839C)) ,),
        ],
      ),
    );
  }
}
