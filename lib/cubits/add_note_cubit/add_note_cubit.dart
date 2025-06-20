import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

 Color color = Color(0xFFC6878F);
  addNote(NoteModel note)async
  {
    note.color = color.value;
    emit(AddNoteLoading());
   try {
  var notesbox = Hive.box<NoteModel>(kNotesBox);
  await notesbox.add(note);
  emit(AddNoteSuccess());

} catch (e) {
  emit(AddNoteFailure(e.toString())); 
}
  }
}
