import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'Views/Notes_Views.dart';
import 'constant.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: "Poppins"),
      home: const Notes_View(),
    );
  }
}
