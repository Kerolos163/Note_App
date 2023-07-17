import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/Notes_Cubit/Cubit.dart';
import '../../Cubit/Notes_Cubit/State.dart';
import 'Custom_Note_Card.dart';

class ListViewCArd extends StatelessWidget {
  const ListViewCArd({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
            padding: EdgeInsets.zero,
            physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics()),
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                NoteCard(note: NoteCubit.get(context).Notes![index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 8,
            ),
            itemCount: NoteCubit.get(context).Notes!.length,
          ),
        );
      },
    );
  }
}
