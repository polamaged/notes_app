import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/Model/note_model.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/view/widgets/Color_list_view.dart';
import 'package:notesapp/view/widgets/custom_buttom.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onsaved: (data) {
              title = data;
            },
            hintname: 'Title',
            maxline: 2,
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onsaved: (data) {
              subtitle = data;
            },
            hintname: 'Content',
            maxline: 5,
          ),
          const SizedBox(height: 32),
     
         const ColorListView(),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
                return CustomButtom(
                  isloading: state is AddNoteLoading ? true : false ,
                  ontap: () {
                    if (formkey.currentState!.validate()) {
                      formkey.currentState!.save();
                      var currentdata = DateTime.now();
                      var formattedcurrentdata = DateFormat.yMd().format(currentdata);
                      var notemodel = NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date:formattedcurrentdata,
                        color: Colors.brown.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
            },
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}