import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/widget/Custom_TextField.dart';
import 'package:note_app/models/note_model.dart';

import '../../Cubit/Notes_Cubit/Cubit.dart';
import '../../Cubit/Notes_Cubit/State.dart';
import 'Custom_Note_Card.dart';
import 'Search_ListView.dart';

class search_View_Body extends StatelessWidget {
  const search_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        return Padding(
          padding:
              const EdgeInsets.only(top: 70, bottom: 10, right: 20, left: 20),
          child: Column(
            children: [
              CustomTextField(
                hint: "Enter Text...",
                label: "Search",
                onChanged: (value) {
                  NoteCubit.get(context).SearchNoteFormAllNote(Str: value);
                  if (value.isEmpty) {
                    NoteCubit.get(context).SearchNoteFormAllNote(Str: null);
                  }
                },
              ),
              const SizedBox(
                height: 10,
              ),
              if (state is SearchLoading) const LinearProgressIndicator(),
              const SizedBox(
                height: 10,
              ),
              Search_ListView()
            ],
          ),
        );
      },
    );
  }
}
