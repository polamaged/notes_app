import 'package:flutter/material.dart';
import 'package:notesapp/view/widgets/custom_buttom.dart';
import 'package:notesapp/view/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {


  GlobalKey<FormState>formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title , subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:[
          const SizedBox(height: 32),
          CustomTextField(
            onsaved:(data) {
              title = data;
            },
          hintname: 'Title', maxline: 2),
        const SizedBox(height: 16),
          CustomTextField(
              onsaved:(data) {
              subtitle = data;
            },
            hintname: 'Content', maxline: 5),
         const SizedBox(height: 32),
          CustomButtom(ontap: (){
             if(formkey.currentState!.validate())
             {
              formkey.currentState!.save();
              setState(() {});
             }
             else 
             {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
             }
          },),
         const SizedBox(height: 32),
      
        ],
      ),
    );
  }
}
