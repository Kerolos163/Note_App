import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Views/widget/Note_Bottom_Sheet.dart';
import 'package:note_app/Views/widget/Notes_View_Body.dart';

import '../Cubit/Notes_Cubit/Cubit.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit()..fetchallnotes(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) => const AddNote(),
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const Notes_View_Body(),
      ),
    );
  }
}
