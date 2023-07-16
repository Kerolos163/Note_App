import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'State.dart';

class AddNoteAppCubit extends Cubit<AddNoteAppState> {
  AddNoteAppCubit() : super(InitState());
  static AddNoteAppCubit get(context) => BlocProvider.of(context);
}
