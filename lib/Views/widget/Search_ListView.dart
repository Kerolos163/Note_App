import 'package:flutter/material.dart';

import '../../Cubit/Notes_Cubit/Cubit.dart';
import 'Custom_Note_Card.dart';

class Search_ListView extends StatelessWidget {
  const Search_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            NoteCard(note: NoteCubit.get(context).Search_Notes[index]),
        separatorBuilder: (context, index) => const SizedBox(
          height: 8,
        ),
        itemCount: NoteCubit.get(context).Search_Notes.length,
      ),
    );
  }
}