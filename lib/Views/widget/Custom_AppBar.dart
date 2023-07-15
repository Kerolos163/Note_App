import 'package:flutter/material.dart';

import 'Custom_IconSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title = "Notes",
    this.icon = Icons.search,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30),
          ),
          Custom_SearchIcon(
            icon: icon,
          )
        ],
      ),
    );
  }
}
