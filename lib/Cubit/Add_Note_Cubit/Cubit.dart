import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';

import '../../constant.dart';
import 'State.dart';

class AddNoteAppCubit extends Cubit<AddNoteAppState> {
  AddNoteAppCubit() : super(InitAddNoteAppState());
  static AddNoteAppCubit get(context) => BlocProvider.of(context);
  AddNote(NoteModel Note) async {
    emit(AddNoteAppLoading());
    try {
      var notesbox = Hive.box<NoteModel>(kNoteBox);
      await notesbox.add(Note);
      emit(AddNoteAppSuccess());
    } catch (e) {
      debugPrint(e.toString());
      emit(AddNoteAppFailure(e.toString()));
    }
  }
}
