part of 'note_bloc.dart';

@freezed
class NoteEvent with _$NoteEvent {
  const factory NoteEvent.started() = _Started;

  const factory NoteEvent.getAllTodo() = _GetAllTodo;
}