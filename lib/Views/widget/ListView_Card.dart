import 'package:flutter/material.dart';

import 'Custom_Note_Card.dart';

class ListViewCArd extends StatelessWidget {
  const ListViewCArd({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics()),
        shrinkWrap: true,
        itemBuilder: (context, index) => const NoteCard(),
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        itemCount: 10,
      ),
    );
  }
}