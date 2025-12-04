import 'package:cosmetics/core/ui/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/ui/app_search.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});

  final list = [
    _Model(
      image:
          "https://summerfridays.com/cdn/shop/files/Main_PDP_Square_Mauve_Vanilla.jpg?v=1686004788",
      title: "Face tint / lip tint",
      price: r"$44.99",
    ),
    _Model(
      image:
          "https://img.joomcdn.net/79fca485c8ba105e70df8f6d183d40eac5cf4c93_original.jpeg",
      title: "Athe Red lipstick",
      price: r"$44.99",
    ),
    _Model(
      image:
          "https://dominique.com/cdn/shop/files/Brow_Frame_Brow_Blowout_Bundle.webp?v=1746052142&width=2000",
      title: "Athe Red lipstick",
      price: r"$44.99",
    ),
    _Model(
      image:
          "https://irecommend.ru/sites/default/files/imagecache/copyright1/user-images/216607/a81OhWLhz2ZhtCD5r6g.jpg",
      title: "Athe Red lipstick",
      price: r"$44.99",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12.0),
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 46.h,
                child: AppSearch(),
              ),
              SizedBox(height: 14.h),
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: AppImage(
                      image:
                          "https://i.pinimg.com/originals/41/a3/fa/41a3faab05f1c5bd4fe43d8458971f13.jpg",
                      height: 320,
                      width: 364,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Top rated products",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16.sp,
                  ),
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
                itemBuilder: (context, index) => _item(product: list[index]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _item extends StatelessWidget {
  final _Model product;

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
          Text(
            product.title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
          ),
          Text(
            product.price,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12.sp,
              color: Color(0xff70839C),
            ),
          ),
        ],
      ),
    );
  }
}

class _Model {
  final String image, title, price;

  _Model({required this.image, required this.title, required this.price});
}
