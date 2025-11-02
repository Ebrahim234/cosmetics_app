import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({super.key, required this.text});
final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        labelText: text,
        ),
    );
  }
}
