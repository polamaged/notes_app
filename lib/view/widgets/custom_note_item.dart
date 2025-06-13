import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/view/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return const EditNotesView();
        }),);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,left: 16,bottom: 24),
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
              
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 24),
                child: Text('Build your career with thrawat samy', style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
              ),
              trailing: IconButton(
              onPressed:() {
                
              }, 
              icon:const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),),
            ),
        
        
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text('May 21, 2025',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
            ),
          ],
        ),
      ),
    );
  }
}