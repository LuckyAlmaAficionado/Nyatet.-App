import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_nyatet_app_flutter/data/model/notes_response.model.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  NoteBloc() : super(_Initial()) {
    on<NoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
