import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintname, this.maxline = 1});


  final String hintname;
  final int maxline ; 
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryColor,
      maxLines: maxline,
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