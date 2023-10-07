import 'package:flutter/material.dart';

import 'widget/Edit_Note_ViewBody.dart';

import '../models/note_model.dart';

class Edit_Note_View extends StatelessWidget {
  const Edit_Note_View({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Edit_Node_View_Body(note: note),
    );
  }
}
