import 'package:cosmetics/views/home/cart/view.dart';
import 'package:cosmetics/views/home/categories/view.dart';
import 'package:cosmetics/views/home/home_page/view.dart';
import 'package:cosmetics/views/home/profile/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView ({super.key});

  @override
  State<HomeView> createState() => _NewHomeViewState();
}

class _NewHomeViewState extends State<HomeView> {

  final list = [
    _Model(icon: "home.svg", view: HomePageView()),
    _Model(icon: "categories.svg", view: CategoriesView()),
    _Model(icon: "cart.svg", view: CartView()),
    _Model(icon: "profile.svg", view: ProfileView()),
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
      Container(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: const EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
          color: Color(0xffD9D9D9),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              offset: Offset(4, 4),
              spreadRadius: 0,
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
              color: Color(0xff0000001A),
            ),
            BoxShadow(
              offset: Offset(-4, -4),
              spreadRadius: 0,
              blurRadius: 6,
              blurStyle: BlurStyle.outer,
              color: Color(0xff0000001A),
            ),
          ],
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            currentIndex= value;
            setState(() {

            });
          },
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 0,
          unselectedFontSize: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: List.generate(
            list.length,
                (index) =>
                BottomNavigationBarItem(
                  icon: SvgPicture.asset("assets/svg/${list[index].icon}", color:currentIndex==index?Theme.of(context).primaryColor:null),

                  label: "",
                ),
          ),
        ),
      ),
      body: list[currentIndex].view,
    );
  }
}


class _Model {
  final String icon;
  final Widget view;
  _Model({required this.icon,required this.view});
}