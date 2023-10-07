import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'Cubit/Add_Note_Cubit/Cubit.dart';
import 'Simple_Bloc_Observer.dart';
import 'models/note_model.dart';

import 'Cubit/Notes_Cubit/Cubit.dart';
import 'Views/Notes_Views.dart';
import 'constant.dart';

void main() async {
  Bloc.observer = simpleblocobserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit()..fetchallnotes(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.black,
            fontFamily: "Poppins"),
        home: const Notes_View(),
      ),
    );
  }
}
