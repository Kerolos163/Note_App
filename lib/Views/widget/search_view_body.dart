import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/widget/Custom_TextField.dart';

import '../../Cubit/Notes_Cubit/Cubit.dart';
import '../../Cubit/Notes_Cubit/State.dart';

class search_View_Body extends StatelessWidget {
  const search_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        print(NoteCubit.get(context).Notes![0].title);
        return Padding(
          padding:
              const EdgeInsets.only(top: 70, bottom: 10, right: 20, left: 20),
          child: Column(
            children: [
              CustomTextField(
                hint: "Search",
                label: "Search",
                onChanged: (value) {
                  
                },
              )
            ],
          ),
        );
      },
    );
  }
}
