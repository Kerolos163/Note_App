import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/Cubit/Notes_Cubit/Cubit.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';
import 'ColorsNote_ColorListView.dart';
import 'Colors_ListView.dart';
import 'Custom_AppBar.dart';
import 'Custom_TextField.dart';

class Edit_Node_View_Body extends StatefulWidget {
  const Edit_Node_View_Body({super.key, required this.note});
  final NoteModel note;

  @override
  State<Edit_Node_View_Body> createState() => _Edit_Node_View_BodyState();
}

class _Edit_Node_View_BodyState extends State<Edit_Node_View_Body> {
  String? Title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
            onPressed: () {
              widget.note.title = Title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              NoteCubit.get(context).fetchallnotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (p0) {
              Title = p0;
            },
            hint: widget.note.title,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (p0) {
              content = p0;
            },
            hint: widget.note.subTitle,
            maxline: 5,
          ),
          const SizedBox(
            height: 24,
          ),
          EditNote_ColorList(
            note: widget.note,
          )
        ],
      ),
    );
  }
}


