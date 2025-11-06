import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key,  this.labeltext, this.borderradius, this.hinttext,});
final String?labeltext;
final String?hinttext;
final double?borderradius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderradius ?? 25)
        ),
        labelText: labeltext,
        hintText: hinttext,
        ),
    );
  }
}
