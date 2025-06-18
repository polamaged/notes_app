part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesCubitState {}

class NotesCubitInitial extends NotesCubitState {}
class NotesCubitLoading extends NotesCubitState {}
class NotesCubitsuccess extends NotesCubitState {}
class NotesCubitfailure extends NotesCubitState {
  
  final String errmessage;

  NotesCubitfailure(this.errmessage); 


}
