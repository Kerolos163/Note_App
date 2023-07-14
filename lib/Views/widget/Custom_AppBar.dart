import 'package:flutter/material.dart';

import 'Custom_IconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50,bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Notes",
            style: TextStyle(fontSize: 30),
          ),
          Custom_SearchIcon()
        ],
      ),
    );
  }
}
