part of 'note_view_cubit.dart';

@immutable
sealed class NoteViewState {}

final class NoteViewInitial extends NoteViewState {}

final class Notesuccess extends NoteViewState {}
