import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintname, this.maxline = 1, this.onsaved, this.onChange, this.controller});


  final String hintname;
  final int maxline ; 
  final void Function(String?)? onsaved;
  final void Function(String?)? onChange;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChange,
      onSaved: onsaved,
      validator: (value) {
        if(value?.isEmpty ?? true)
        {
          return 'failed is requierd';
        }
        else {
          return null;
        }
      },
      cursorColor: kPrimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hintname,
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildborder(),
        enabledBorder: buildborder(),
        focusedBorder: buildborder(kPrimaryColor),
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