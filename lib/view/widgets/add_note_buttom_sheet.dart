
import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: const [
          SizedBox(height: 32,),
          CustomTextField(hintname: 'Title',maxline: 2,),
          SizedBox(height: 16,),
          CustomTextField(hintname: 'Content',maxline: 5,),

        ],
      
      ),
    );
  }
}
