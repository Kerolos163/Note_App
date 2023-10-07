import 'package:flutter/material.dart';
import 'widget/Note_Bottom_Sheet.dart';
import 'widget/Notes_View_Body.dart';


class Notes_View extends StatelessWidget {
  const Notes_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
