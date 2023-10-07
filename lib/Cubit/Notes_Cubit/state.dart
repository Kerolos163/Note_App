abstract class NoteState {}

class InitNoteState extends NoteState {}

class NotesSuccess extends NoteState {}

class SearchLoading extends NoteState {}

class SearchSuccess extends NoteState {}

class SearchFailure extends NoteState {
  final String error;

  SearchFailure(this.error);
}
