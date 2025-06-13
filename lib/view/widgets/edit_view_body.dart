import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/Custom_App_Bar.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';

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
          SizedBox(height: 50,),

          CustomTextField(hintname: 'Title',maxline: 2,),
          SizedBox(height: 16,),
          CustomTextField(hintname: 'Content',maxline: 5,),
        ],
      ),
    );
  }
}