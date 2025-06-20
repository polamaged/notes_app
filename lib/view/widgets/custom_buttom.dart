import 'package:flutter/material.dart';
import 'package:notesapp/constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.ontap, this.isloading = false});

  final bool isloading;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child:isloading ? const CircularProgressIndicator(color: Colors.black,)  : const Text(
            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
