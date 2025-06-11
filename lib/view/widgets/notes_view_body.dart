
import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/Custom_App_Bar.dart';

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
      
        ]   
      
      ),
    );
  }
}
