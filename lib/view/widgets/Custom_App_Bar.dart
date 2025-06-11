
import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custome_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Text('Notes',style: TextStyle(fontSize: 28),),

          Spacer(),
          CustomeSearchIcon(),
        ],

    );
  }
}

