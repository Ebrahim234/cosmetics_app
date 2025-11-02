import 'package:cosmetics/views/home/categories/view.dart';
import 'package:cosmetics/views/home/home_page/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../cart/view.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container
      ( width: double.infinity ,
      height: 64,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageView(),));
            },
            icon: SvgPicture.asset("assets/svg/home.svg"),
          
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoriesView(),));
            },
            icon: SvgPicture.asset('assets/svg/categories.svg'),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartView(),));
            },
              icon: SvgPicture.asset("assets/svg/cart.svg"),

          ),
          IconButton(
            onPressed: () {},
            icon:SvgPicture.asset("assets/svg/profile.svg") ,
          ),
        ],
      ),
    );
  }
}
