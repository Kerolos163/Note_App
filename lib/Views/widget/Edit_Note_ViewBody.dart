import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'Custom_AppBar.dart';
import 'Custom_TextField.dart';

class Edit_Node_View_Body extends StatelessWidget {
  const Edit_Node_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.done,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: "Title",
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hint: "Content",
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
