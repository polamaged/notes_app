import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubits/notes_cubit_cubit.dart';
import 'package:notesapp/view/widgets/Color_list_view.dart';
import 'package:notesapp/view/widgets/Custom_App_Bar.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';
import 'package:notesapp/view/widgets/edit_notes_color_listview.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {

  late TextEditingController titleController;
  late TextEditingController contentController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.note.title);
    contentController = TextEditingController(text: widget.note.subtitle);
  }

  @override
  void dispose() {
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(onPressed: () {
            widget.note.title = titleController.text;
            widget.note.subtitle = contentController.text;
            widget.note.save();
            BlocProvider.of<NotesCubitCubit>(context).fetchallnotes();
            Navigator.pop(context);
          },  title: 'Edit Note',icon: Icons.done),
          SizedBox(height: 50,),

          CustomTextField(
            controller: titleController,
            onChange: (value) {},
            hintname: 'Title',
            maxline: 2,
          ),
          SizedBox(height: 16,),
          CustomTextField(
            controller: contentController,
            onChange: (value) {},
            hintname: 'Content',
            maxline: 5,
          ),
          EditNoteColorList(
          note: widget.note,
         ),
        ],
      ),
    );
  }
}
