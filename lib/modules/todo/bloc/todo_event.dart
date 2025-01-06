part of 'todo_bloc.dart';

@freezed
class TodoEvent with _$TodoEvent {
  const factory TodoEvent.started() = _Started;

  const factory TodoEvent.getAllTodoToday() = _GetAllTodoToday;
  const factory TodoEvent.getAllTodoHistory() = _GetAllTodoHistory;
}
