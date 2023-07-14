import 'package:flutter/material.dart';

import 'Custom_TextField.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField()
        ],
      ),
    );
  }
}
