import 'package:flutter/material.dart';



class PhoneField extends StatelessWidget {
  const PhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child:Center(child:  Text('+20'),),
          height: 46,
          width: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff5A669066)),
          ),
        ),
        SizedBox(width: 4),
        Container(
          height: 46,
          width:275,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Color(0xff5A669066)),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 16),
                border: InputBorder.none,
              labelText: "Phone number",
              labelStyle: TextStyle(color: Color(0xff8E8EA9),fontSize: 14,fontWeight: FontWeight.w400),

              ),

            ),
          ),
      ],
    );
  }
}
