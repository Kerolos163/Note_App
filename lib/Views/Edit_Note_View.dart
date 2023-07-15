import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/Views/widget/Edit_Note_ViewBody.dart';

class Edit_Note_View extends StatelessWidget {
  const Edit_Note_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Edit_Node_View_Body(),
    );
  }
}
