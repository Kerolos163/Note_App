import 'package:flutter/material.dart';

import '../Search_View.dart';
import 'Custom_AppBar.dart';
import 'ListView_Card.dart';

class Notes_View_Body extends StatelessWidget {
  const Notes_View_Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const search_View(),
              ));
            },
          ),
          const ListViewCArd(),
        ],
      ),
    );
  }
}
