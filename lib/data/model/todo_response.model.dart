import 'dart:convert';

import 'todo_history_response.model.dart';

class TodoResponseModel {
  final bool? status;
  final int? statusCode;
  final List<Todo>? todos;

  TodoResponseModel({
    this.status,
    this.statusCode,
    this.todos,
  });

  factory TodoResponseModel.fromJson(String str) =>
      TodoResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TodoResponseModel.fromMap(Map<String, dynamic> json) =>
      TodoResponseModel(
        status: json["status"],
        statusCode: json["statusCode"],
        todos: json["todos"] == null
            ? []
            : List<Todo>.from(json["todos"]!.map((x) => Todo.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "statusCode": statusCode,
        "todos": todos == null
            ? []
            : List<dynamic>.from(todos!.map((x) => x.toMap())),
      };
}
