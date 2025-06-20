import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notesapp/cubits/notes_cubits/notes_cubit_cubit.dart';
import 'package:notesapp/view/widgets/add_note_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: EdgeInsets.only(left: 16 ,right: 16 , bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubitCubit>(context).fetchallnotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(child: AddNoteForm());
          },
        ),
      ),
    );
  }
}
