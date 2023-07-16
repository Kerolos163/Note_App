import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_model.dart';

import 'State.dart';

class AddNoteAppCubit extends Cubit<AddNoteAppState> {
  AddNoteAppCubit() : super(InitAddNoteAppState());
  static AddNoteAppCubit get(context) => BlocProvider.of(context);
  AddNote(NoteModel Note) {}
}
