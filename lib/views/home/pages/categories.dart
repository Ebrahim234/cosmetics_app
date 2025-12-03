import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/core/ui/app_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override

  Widget build(BuildContext context) {
    final categories = [
      _model(
        "https://blpbeauty.com/cdn/shop/articles/0_-_THUMBNAIL_2347f276-c4a9-4f71-9f22-a3d9857a0145.jpg?v=1713208415&width=400",
        "Bundles",
      ),
      _model(
        "https://www.popsugar.com.au/wp-content/uploads/sites/2/2021/07/st-rose-perfume-1024x1024.jpg",
        "Perfumes",
      ),
      _model(
        "https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/1951123/WKp7IcBBBbAybQ5zXHqRQ.jpg",
        "Make up",
      ),
      _model(
        "https://www.beautysauce.com/wp-content/uploads/2019/05/fb_su19_ii_pro_kiss_r_balm_1_2000x2000_300dpi_rgb-1600x1600.jpg",
        "Skin Care",
      ),
      _model(
        "https://i.pinimg.com/originals/98/c4/f4/98c4f4413857a7e41e9127fa969c3850.jpg",
        "Gifts",
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 24.h),
                AppSearch(),
                SizedBox(height: 32.h),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: categories.length,
                  separatorBuilder: (context, index) => Column(
                    children: [
                      SizedBox(height: 20.h),
                      Divider(),
                      SizedBox(height: 20.h),
                    ],
                  ),
                  itemBuilder: (context, index) {
                    final item = categories[index];
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AppImage(
                            image: item.image,
                            height: 69.h,
                            width: 64.w,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 12.w),
                        Expanded(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon:AppImage(image:"arrow_right.svg", height: 24, width: 24),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _model {
  final String image,title;

  _model(this.image, this.title);
}