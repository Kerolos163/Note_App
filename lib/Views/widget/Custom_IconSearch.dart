import 'package:flutter/material.dart';

class Custom_SearchIcon extends StatelessWidget {
  const Custom_SearchIcon({super.key, this.icon = Icons.search});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[900]),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          icon,
          size: 35,
        ),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
