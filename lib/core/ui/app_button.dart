import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key,required this.title, this.onPressed,this.icon, this.color = "",});
 final String title;
  final VoidCallback? onPressed;
  final Widget? icon;
  final String color;


  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: FilledButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Text(
          title,
        ),
            if (icon != null) icon!,
      ]
        )     ),
    );
        }
        }
