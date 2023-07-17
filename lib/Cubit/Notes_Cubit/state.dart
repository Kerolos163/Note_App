import 'package:note_app/models/note_model.dart';

abstract class NoteState {}

class InitNoteState extends NoteState {}

class NoteLoading extends NoteState {}

class NoteSuccess extends NoteState {
  final List<NoteModel> notes;

  NoteSuccess(this.notes);
}

class NoteFailure extends NoteState {
  final String error;

  NoteFailure(this.error);
}
