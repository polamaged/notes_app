
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/view/widgets/Custom_App_Bar.dart';
import 'package:notesapp/view/widgets/custom_note_item.dart';

class notesviewbody extends StatelessWidget {
  const notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50,),
          CustomAppBar(),
          SizedBox(height: 16,),
          NoteItem(),
        ]   
      
      ),
    );
  }
}
