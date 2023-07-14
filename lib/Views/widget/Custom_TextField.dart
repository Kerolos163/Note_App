import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: p_color,
      
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: p_color),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(p_color)),
    );
  }

  OutlineInputBorder BuildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
