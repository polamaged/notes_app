import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/cubits/notes_cubits/notes_cubit_cubit.dart';
import 'package:notesapp/view/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitCubit,NotesCubitState >(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubitCubit>(context).notes?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding:EdgeInsets.symmetric(vertical: 8),
                child: NoteItem(note:notes[index]),
              );
            },
          ),
        );
      },
    );
  }
}
