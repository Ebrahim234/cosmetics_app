import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/ui/app_image/view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = [
      _model("edit.svg","Edit Profile"),
      _model("order_history.svg","Order History"),
      _model("wallet.svg","Wallet"),
      _model("setting.svg","Setting"),
      _model("voucher.svg","Voucher"),
      _model("logout.svg","Logout"),
    ];
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
                  
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),separatorBuilder:(context, index) => SizedBox(height: 20,),itemBuilder: (context, index) {
                    final item = categories[index];
                    return  Row(
                      children: [
                        IconButton(onPressed: (){}, icon: AppImage(image: item.icon, height: 20.h, width: 20.w)),
                        SizedBox(width: 2,),
                        Text(item.title,style: TextStyle(fontSize:14.sp,fontWeight: FontWeight.w600),),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: AppImage(image: "forward.svg", height: 24.h, width: 24.w))
                      ],
                    );
                  },itemCount: 6,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class _model{
  late final String title,icon;
  _model(this.icon,this.title);
}
