import 'package:cosmetics/views/home/profile/widgets/profile_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 152.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF6DD4E7), Color(0xFFECA4C5)],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                children: [
                  SizedBox(height: 70.h),
                  Center(
                    child: CircleAvatar(
                      radius: 40.r,
                      backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1668895511243-1696733f4fcb?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybCUyMGZhY2V8ZW58MHx8MHx8fDA%3D&fm=jpg&q=60&w=3000"),
                    ),
                  ),
                   SizedBox(height: 16.h),
                   Text(
                    "Sara Samer Talaat",
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff434C6D),
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  ProfilePages(icon: "edit.svg", title: "Edit Profile"),
                  SizedBox(height: 20.h,),
                  ProfilePages(icon: "order_history.svg", title: "Order History"),
                  SizedBox(height: 20.h,),
                  ProfilePages(icon: "wallet.svg", title: "Wallet"),
                  SizedBox(height: 20.h,),
                  ProfilePages(icon: "setting.svg", title: "Setting"),
                  SizedBox(height: 20.h,),
                  ProfilePages(icon: "voucher.svg", title: "Voucher"),
                  SizedBox(height: 20.h,),
                  ProfilePages(icon: "logout.svg", title: "Logout"),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
