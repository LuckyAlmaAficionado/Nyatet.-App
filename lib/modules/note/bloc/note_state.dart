part of 'note_bloc.dart';

@freezed
class NoteState with _$NoteState {
  const factory NoteState.initial() = _Initial;

  const factory NoteState.loaded(List<Note> notes) = _Loaded;
  const factory NoteState.loading() = _Loading;
  const factory NoteState.success() = _Success;
  const factory NoteState.error() = _Error;
}
