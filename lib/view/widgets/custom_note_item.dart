import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/cubits/notes_cubits/notes_cubit_cubit.dart';
import 'package:notesapp/view/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});


final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return EditNotesView(note:note);
        }),);
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,left: 16,bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(note.title,style: const TextStyle(color: Colors.black,fontSize: 26),),
              
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 24,bottom: 24),
                child: Text(note.subtitle, style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 18),),
              ),
              trailing: IconButton(
              onPressed:() {
                note.delete();
                BlocProvider.of<NotesCubitCubit>(context).fetchallnotes();
              }, 
              icon:const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),),
            ),
        
        
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(note.date,style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 16),),
            ),
          ],
        ),
      ),
    );
  }
}