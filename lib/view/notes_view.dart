import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/notes_view_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body: notesviewbody(),
      );

  }
}

