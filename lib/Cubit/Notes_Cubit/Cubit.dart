import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';
import 'State.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(InitNoteState());
  static NoteCubit get(context) => BlocProvider.of(context);
  List<NoteModel>? Notes;
  fetchallnotes() async {
    var notesbox = Hive.box<NoteModel>(kNoteBox);
    Notes = notesbox.values.toList();
  }
}
