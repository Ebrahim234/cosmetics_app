import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 46,
          width: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff5A669066)),
          ),
          child: IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 10,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xff5A669066)),
              ),
            ),
            dropdownIconPosition: IconPosition.trailing,
            initialCountryCode: 'EG',
            showDropdownIcon: true,
            showCountryFlag: false,
            disableLengthCheck: true,
            dropdownTextStyle: TextStyle(fontSize: 14),
            style: TextStyle(fontSize: 12),
          ),
        ),
        SizedBox(width: 4),
        Container(
          height: 46,
          width: 275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff5A669066)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 16),
              border: InputBorder.none,
              labelText: "Phone number",
              labelStyle: TextStyle(
                color: Color(0xff8E8EA9),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
