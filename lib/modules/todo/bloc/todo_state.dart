part of 'todo_bloc.dart';

@freezed
class TodoState with _$TodoState {
  const factory TodoState.initial() = _Initial;

  const factory TodoState.loadedTodoToday(List<Todo> todo) = _LoadedTodoToday;
  const factory TodoState.loadedTodoHistory(Map<String, List<Todo>>? todo) = _LoadedTodoHistory;
  const factory TodoState.loading() = _Loading;
  const factory TodoState.success() = _Success;
  const factory TodoState.error({required String error}) = _Error;
}
