abstract class AddNoteAppState {}

class InitAddNoteAppState extends AddNoteAppState {}

class AddNoteAppLoading extends AddNoteAppState {}

class AddNoteAppSuccess extends AddNoteAppState {}

class AddNoteAppFailure extends AddNoteAppState {
  final String error;

  AddNoteAppFailure(this.error);
}
