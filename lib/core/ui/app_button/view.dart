import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key,required this.title, this.onPressed, required this.width,});
 final String title;
  final VoidCallback? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width,
      child: FilledButton(
      style: ButtonStyle(),
        onPressed: () {},
        child: Text(
          title,
        ),
      ),
    );
        }
        }
