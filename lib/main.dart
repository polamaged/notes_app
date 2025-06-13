import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/view/notes_view.dart';

void main() async{

  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins'
      ),
      
      home:const Homeview(),
    );
  }
}