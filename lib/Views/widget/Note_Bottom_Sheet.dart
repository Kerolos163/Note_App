import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/constant.dart';

import '../../Add_Note_Cubit/Cubit.dart';
import '../../Add_Note_Cubit/State.dart';
import 'Add_Note_Form.dart';
import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteAppCubit, AddNoteAppState>(
          listener: (context, state) {
            if (state is AddNoteAppSuccess) {
              Navigator.pop(context);
            } else if (state is AddNoteAppFailure) {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteAppLoading ? true : false,
              child: const AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
