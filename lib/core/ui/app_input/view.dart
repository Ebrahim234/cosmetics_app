import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_image/view.dart';

class AppInput extends StatefulWidget {
  final String? labeltext, hinttext, suffixicon;
  final double? borderradius;
  final bool? withCountryCode,isPassword;

  const AppInput({
    super.key,
    this.labeltext,
    this.borderradius,
    this.hinttext,
    this.suffixicon,
    this.withCountryCode,
    this.isPassword = false,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool isHidden = true;
  int? selectedCountryCode;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (widget.withCountryCode == true)
          Container(
            height: 46.h,
            width: 72.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color(0x5A669066)),
            ),
            child: DropdownButton<int>(
              value: selectedCountryCode,
              icon: AppImage(
                image: "dropdown_arrow.svg",
                height: 8.h,
                width: 2.w,
              ),
              items: [20, 966]
                  .map((e) => DropdownMenuItem(value: e, child: Text("$e")))
                  .toList(),
              onChanged: (value) {
                selectedCountryCode = value;
                setState(() {});
              },
            ),
          ),
        SizedBox(width: 4.w),
        Expanded(
          child: Container(
            height: 46.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: Color(0xff5A669066)),
            ),
            child: TextFormField(
              obscureText: widget.isPassword == true ? isHidden : false,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 16.h),
                border: InputBorder.none,
                hintText: widget.hinttext,
                suffixIcon:
               widget.isPassword == true?IconButton(
                  onPressed: () {
                    isHidden =! isHidden;
                    setState(() {});
                  },
                  icon: AppImage(
                    image: isHidden? "visibility_off.svg" : "visibility.svg",
                    height: 24.h,
                    width: 24.w,
                  ),
                ):widget.suffixicon!=null?
                AppImage(image: widget.suffixicon!, height: 18.h, width: 18.h):null,
                hintStyle: TextStyle(),
                labelText: widget.labeltext,
                labelStyle: TextStyle(
                  color: Color(0xff5A669066),
                  fontSize: 14.sp,
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
