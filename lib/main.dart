import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/simple_bloc_observer.dart';
import 'package:notesapp/view/notes_view.dart';

void main() async{


  await Hive.initFlutter();
Bloc.observer = SimpleBlocObserver();
Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark,
        fontFamily: 'Poppins'
        ),
        
        home:const Homeview(),
      ),
    );
  }
}