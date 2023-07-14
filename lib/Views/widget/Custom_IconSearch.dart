import 'package:flutter/material.dart';

class Custom_SearchIcon extends StatelessWidget {
  const Custom_SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[900]
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.search,
          size: 35,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}