import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:note_app/Views/widget/Notes_View_Body.dart';

class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Notes_View_Body(),
    );
  }
}
