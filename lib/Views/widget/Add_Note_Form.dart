import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/Cubit/Add_Note_Cubit/Cubit.dart';

import '../../Cubit/Add_Note_Cubit/State.dart';
import '../../constant.dart';
import '../../models/note_model.dart';
import 'Colors_ListView.dart';
import 'Custom_Button.dart';
import 'Custom_TextField.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? Title, Subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onsaved: (p0) {
              Title = p0;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (p0) {
              Subtitle = p0;
            },
            hint: "Content",
            maxline: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          const ColorListView(),
          const SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteAppCubit, AddNoteAppState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: State is AddNoteAppLoading ? true : false,
                ontap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formatted_current_date =
                        DateFormat('dd-MM-yyyy').format(currentdate);
                    var notemodel = NoteModel(
                      title: Title!,
                      subTitle: Subtitle!,
                      date: formatted_current_date,
                      color: Colors.amber.value,
                    );
                    AddNoteAppCubit.get(context).AddNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
