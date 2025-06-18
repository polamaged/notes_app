import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());



  fetchallnotes()async{
  emit(NotesCubitLoading());
   try {
  var notesbox = Hive.box<NoteModel>(kNotesBox);
  List<NoteModel> notes = notesbox.values.toList();
  emit(NotesCubitsuccess(notes));

} catch (e) {
  emit(NotesCubitfailure(e.toString())); 
}

  }
}
