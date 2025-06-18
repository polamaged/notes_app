import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

 List<NoteModel>? notes;
  fetchallnotes(){
 
  var notesbox = Hive.box<NoteModel>(kNotesBox);
   notes = notesbox.values.toList();


  }
}
