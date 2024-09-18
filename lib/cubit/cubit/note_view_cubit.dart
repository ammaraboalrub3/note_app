import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_application/constant.dart';
import 'package:note_application/model/note_model.dart';

part 'note_view_state.dart';

class NoteViewCubit extends Cubit<NoteViewState> {
  NoteViewCubit() : super(NoteViewInitial());

  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(noteBox);
    List<NoteModel> note = notesBox.values.toList();
    emit(Notesuccess(note));
  }
}
