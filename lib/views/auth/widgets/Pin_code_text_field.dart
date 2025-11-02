import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class MyPinCodeTextField extends StatelessWidget {
  const MyPinCodeTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      pinTheme:
      PinTheme(
        fieldHeight: 50,
        fieldWidth: 50,
        borderRadius: BorderRadius.circular(8),
        selectedColor: Color(0xffD75D72),
        activeFillColor: Colors.white,
        activeColor: Colors.white,
        borderWidth: 1,
        inactiveColor: Color(0xff89899275),
        shape: PinCodeFieldShape.box,
      )
      ,
    );
  }
}
