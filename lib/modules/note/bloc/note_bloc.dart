import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/notes_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/model/notes_response.model.dart';
import 'package:frontend_nyatet_app_flutter/service/hive.service.dart';

part 'note_event.dart';
part 'note_state.dart';
part 'note_bloc.freezed.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  final NotesDatasource datasource;

  NoteBloc(this.datasource) : super(const _Initial()) {
    on<_GetAllNotes>((event, emit) async {
      emit(const _Loading());

      HiveService hiveService = HiveService();
      await hiveService.initializeHive();
      final data = await datasource.getAllNotes(
        token: hiveService.get('token'),
      );

      return data.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r)),
      );
    });
  }
}
