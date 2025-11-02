import 'package:cosmetics/core/ui/app_image/view.dart';
import 'package:cosmetics/views/home/categories/widgets/categorie_items.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
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
                SizedBox(
                  width: double.infinity,
                  height: 46.w,
                ),
                SizedBox(height: 32.h),
                CategorieItems(
                  image: "https://blpbeauty.com/cdn/shop/articles/0_-_THUMBNAIL_2347f276-c4a9-4f71-9f22-a3d9857a0145.jpg?v=1713208415&width=400",
                  title: "Bundles",
                ),
                SizedBox(height: 15.h),
                Divider(),
                SizedBox(height: 15.h),
                CategorieItems(
                  image: "https://www.popsugar.com.au/wp-content/uploads/sites/2/2021/07/st-rose-perfume-1024x1024.jpg",
                  title: "Perfumes",
                ),
                SizedBox(height: 15.h),
                Divider(),
                SizedBox(height: 15.h),
                CategorieItems(
                  image: "https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/1951123/WKp7IcBBBbAybQ5zXHqRQ.jpg",
                  title: "Make up",
                ),
                SizedBox(height: 15.h),
                Divider(),
                SizedBox(height: 15.h),
                CategorieItems(
                  image: "https://www.beautysauce.com/wp-content/uploads/2019/05/fb_su19_ii_pro_kiss_r_balm_1_2000x2000_300dpi_rgb-1600x1600.jpg",
                  title: "Skin Care",
                ),
                SizedBox(height: 15.h),
                Divider(),
                SizedBox(height: 15.h),
                CategorieItems(
                  image: "https://i.pinimg.com/originals/98/c4/f4/98c4f4413857a7e41e9127fa969c3850.jpg",
                  title: "Gifts",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
