import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintname});


  final String hintname;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      decoration: InputDecoration(
        hintText: hintname,
        hintStyle: TextStyle(color: KPrimaryColor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(KPrimaryColor),
      ),


    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(
          color: color ?? Colors.white)
      );
  }
}