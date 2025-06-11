import 'package:flutter/material.dart';
import 'package:notesapp/view/home_page.dart';

void main() {
  runApp(const notesapp());
}

class notesapp extends StatelessWidget {
  const notesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),

      home:const Homeview(),
    );
  }
}