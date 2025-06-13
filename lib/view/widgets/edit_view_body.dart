import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/Custom_App_Bar.dart';

class EditViewBody extends StatelessWidget {
  const EditViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note',icon: Icons.done),
        ],
      ),
    );
  }
}