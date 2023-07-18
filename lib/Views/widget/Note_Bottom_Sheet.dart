import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/Cubit/Notes_Cubit/Cubit.dart';
import 'package:note_app/constant.dart';

import '../../Cubit/Add_Note_Cubit/Cubit.dart';
import '../../Cubit/Add_Note_Cubit/State.dart';
import 'Add_Note_Form.dart';
import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteAppCubit(),
      child: BlocConsumer<AddNoteAppCubit, AddNoteAppState>(
        listener: (context, state) {
          if (state is AddNoteAppSuccess) {
            Navigator.pop(context);
            NoteCubit.get(context).fetchallnotes();
                        ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text("Added Note Done")));
          } else if (state is AddNoteAppFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteAppLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
