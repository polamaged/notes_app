import 'package:flutter/material.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/view/widgets/edit_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key, required this.note});


final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(note: note,),
    );
  }
}