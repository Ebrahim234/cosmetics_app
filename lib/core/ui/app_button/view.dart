import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key,required this.title, this.onPressed, required this.width, this.icon,});
 final String title;
  final VoidCallback? onPressed;
  final double? width;
  final Widget? icon;


  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,
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
