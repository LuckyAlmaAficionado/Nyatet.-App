import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/todo_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/model/todo_history_response.model.dart';

import '../../../service/hive.service.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoDatasource todoDatasource;
  HiveService hiveService = HiveService();

  TodoBloc(this.todoDatasource) : super(const _Initial()) {
    on<_GetAllTodoToday>((event, emit) async {
      emit(const _Loading());

      await hiveService.initializeHive();
      final result = await todoDatasource.getAllTodoToday(
        token: hiveService.get('token'),
      );

      return result.fold(
        (l) => emit(_Error(error: l)),
        (r) => emit(_LoadedTodoToday(r)),
      );
    });

    on<_GetAllTodoHistory>((event, emit) async {
      emit(const _Loading());

      await hiveService.initializeHive();
      final result = await todoDatasource.getAllTodoHistory(
        token: hiveService.get('token'),
      );

      return result.fold(
        (l) => emit(_Error(error: l)),
        (r) => emit(_LoadedTodoHistory(r)),
      );
    });
  }
}
