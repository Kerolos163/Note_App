import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hint,
      this.maxline = 1,
      this.onsaved,
      this.onChanged,
      this.label});
  final String hint;
  final String? label;
  final int maxline;
  final void Function(String?)? onsaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onsaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field Is Required";
        }
        return null;
      },
      cursorColor: p_color,
      maxLines: maxline,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          hintStyle: TextStyle(color: p_color),
          labelStyle: TextStyle(color: p_color),
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
