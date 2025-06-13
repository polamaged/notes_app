import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note)async
  {
    emit(AddNoteLoading());
   try {
  var notesbox = Hive.box<NoteModel>(kNotesBox);
  emit(AddNoteSuccess());
  await notesbox.add(note);
} catch (e) {
  emit(AddNoteFailure(e.toString())); 
}
  }
}
