import 'package:dartz/dartz.dart';
import 'package:frontend_nyatet_app_flutter/data/model/todo_history_response.model.dart';
import 'package:frontend_nyatet_app_flutter/data/model/todo_response.model.dart';
import 'package:http/http.dart' as http;

class TodoDatasource {
  Future<Either<String, List<Todo>>> getAllTodoToday({
    required String token,
  }) async {
    try {
      var headers = {'Authorization': 'Bearer $token'};
      var request = http.Request(
          'GET', Uri.parse('https://nyatet.orzverse.com/api/todo'));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final str = await response.stream.bytesToString();
        final todos = TodoResponseModel.fromJson(str);
        return Right(todos.todos!);
      } else {
        return Left(response.reasonPhrase!);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either<String, Map<String, List<Todo>>?>> getAllTodoHistory({
    required String token,
  }) async {
    try {
      var headers = {'Authorization': 'Bearer $token'};
      var request = http.Request(
        'GET',
        Uri.parse('https://nyatet.orzverse.com/api/todo/history'),
      );

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final str = await response.stream.bytesToString();
        final result = TodoHistoryResponseModel.fromJson(str);
        return Right(result.todos!);
      } else {
        return Left(response.reasonPhrase!);
      }
    } catch (e) {
      return Left(e.toString());
    }
  }
}
