import 'package:flutter/material.dart';

import 'Custom_Button.dart';
import 'Custom_TextField.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? Title, Subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onsaved: (p0) {
              Title = p0;
            },
            hint: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onsaved: (p0) {
              Subtitle = p0;
            },
            hint: "Content",
            maxline: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}