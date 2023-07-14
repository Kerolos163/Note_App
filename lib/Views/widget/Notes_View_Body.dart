import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Custom_AppBar.dart';
import 'Custom_Note_Card.dart';

class Notes_View_Body extends StatelessWidget {
  const Notes_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          CustomAppBar(),
          NoteCard(),
        ],
      ),
    );
  }
}
