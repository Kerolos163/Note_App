import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../models/note_model.dart';

import '../../constant.dart';
import 'State.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(InitNoteState());
  static NoteCubit get(context) => BlocProvider.of(context);
  List<NoteModel>? Notes;
  fetchallnotes() {
    var notesbox = Hive.box<NoteModel>(kNoteBox);
    Notes = notesbox.values.toList();
    emit(NotesSuccess());
  }

  List<NoteModel> Search_Notes = [];
  SearchNoteFormAllNote({String? Str}) {
    Search_Notes = [];
    try {
      if (Str == null) {
        emit(SearchSuccess());
      } else {
        emit(SearchLoading());
        for (var Note in Notes!) {
          if (Note.title.contains(Str) || Note.subTitle.contains(Str)) {
            Search_Notes.add(Note);
            print(Note.title);
          }
        }
        emit(SearchSuccess());
      }
    } catch (e) {
      emit(SearchFailure(e.toString()));
    }
  }
}
