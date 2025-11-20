import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_image/view.dart';

class AppInput extends StatelessWidget {
  const AppInput(
      {super.key, this.labeltext, this.borderradius, this.hinttext, this.suffixicon,  this.withCountryCode,});

  final String?labeltext, hinttext, suffixicon;
  final double?borderradius;
  final bool? withCountryCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(withCountryCode==true)
        Container(
            height: 46,
            width: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xff5A669066)),
            ),
            child: DropdownButton<int>(
              icon: AppImage(
                  image: "dropdown_arrow.svg", height: 8.h, width: 2.w),
              items: [20, 966].map((e) =>
                  DropdownMenuItem(value: e, child: Text("$e")),).toList(),
              onChanged: (value) {

              },)
        ),
        SizedBox(width: 4),
        Expanded(
          child: Container(
            height: 46,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0xff5A669066)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none,
                hintText: hinttext,
                labelText: labeltext,
                labelStyle: TextStyle(
                  color: Color(0xff8E8EA9),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}