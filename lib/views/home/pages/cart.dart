import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:cosmetics/core/ui/app_image.dart';
import 'package:cosmetics/views/checkout/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widges/cart_items.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 8.h),
                Center(
                  child: Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            'My Cart',
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          goTo(CheckoutView());
                        },
                        icon: AppImage(image: "checkout_icon.svg", height: 24.h, width: 24.w,)
                      ),
                    ],
                  ),),

                  SizedBox(height: 30.h),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'You have 4 products in your cart',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff434C6D8C),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                CartItems(
                  price: "350 EGP",
                  description: "Ultra rich mascara for lashes",
                  name: "Note Cosmetics",
                  image: "https://cdn1.ozone.ru/s3/multimedia-v/6673282375.jpg",
                ),
                SizedBox(height: 20.h),
                Divider(),
                SizedBox(height: 20.h),
                CartItems(
                  price: "500 EGP",
                  description: "Bronzer - 02 ",
                  name: "ARTDECO",
                  image:
                      "https://img.pzrmcdn.com/mnresize/452/448/asset/3800226540338/8f3a6a3a-f5d8-4d88-9969-08da88d33ea0/impalahighlighterkalemhighlighterstickatomaticno01-1.jpg",
                ),
                SizedBox(height: 20.h),
                Divider(),
                SizedBox(height: 20.h),
                CartItems(
                  price: "260 EGP",
                  description: "Lipstick - shade 9",
                  name: "FENDI",
                  image:
                      "https://m.media-amazon.com/images/I/21hSpzkWEdL._SS1024_.jpg",
                ),
                SizedBox(height: 20.h),
                Divider(),
                SizedBox(height: 20.h),
                CartItems(
                  price: "260 EGP",
                  description: "Lipstick - shade 9",
                  name: "FENDI",
                  image:
                      "https://i.pinimg.com/originals/72/b8/41/72b841d4de98c398bfb0040146bba748.jpg",
                ),
              ],
            ),
          ),
      ),
    );
  }
}
