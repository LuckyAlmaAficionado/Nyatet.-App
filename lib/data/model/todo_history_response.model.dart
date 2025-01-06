import 'dart:convert';

class TodoHistoryResponseModel {
  final bool? status;
  final int? statusCode;
  final Map<String, List<Todo>>? todos;
  final Paginate? paginate;

  TodoHistoryResponseModel({
    this.status,
    this.statusCode,
    this.todos,
    this.paginate,
  });

  factory TodoHistoryResponseModel.fromJson(String str) =>
      TodoHistoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TodoHistoryResponseModel.fromMap(Map<String, dynamic> json) =>
      TodoHistoryResponseModel(
        status: json["status"],
        statusCode: json["statusCode"],
        todos: Map.from(json["todos"]!).map((k, v) =>
            MapEntry<String, List<Todo>>(
                k, List<Todo>.from(v.map((x) => Todo.fromMap(x))))),
        paginate: json["paginate"] == null
            ? null
            : Paginate.fromMap(json["paginate"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "statusCode": statusCode,
        "todos": Map.from(todos!).map((k, v) => MapEntry<String, dynamic>(
            k, List<dynamic>.from(v.map((x) => x.toMap())))),
        "paginate": paginate?.toMap(),
      };
}

class Paginate {
  final int? currentPage;
  final int? perPage;
  final int? from;
  final int? to;
  final String? path;
  final String? firstPageUrl;
  final String? nextPageUrl;
  final dynamic prevPageUrl;

  Paginate({
    this.currentPage,
    this.perPage,
    this.from,
    this.to,
    this.path,
    this.firstPageUrl,
    this.nextPageUrl,
    this.prevPageUrl,
  });

  factory Paginate.fromJson(String str) => Paginate.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Paginate.fromMap(Map<String, dynamic> json) => Paginate(
        currentPage: json["current_page"],
        perPage: json["per_page"],
        from: json["from"],
        to: json["to"],
        path: json["path"],
        firstPageUrl: json["first_page_url"],
        nextPageUrl: json["next_page_url"],
        prevPageUrl: json["prev_page_url"],
      );

  Map<String, dynamic> toMap() => {
        "current_page": currentPage,
        "per_page": perPage,
        "from": from,
        "to": to,
        "path": path,
        "first_page_url": firstPageUrl,
        "next_page_url": nextPageUrl,
        "prev_page_url": prevPageUrl,
      };
}

class Todo {
  final String? slug;
  final String? content;
  final String? isDone;
  final DateTime? date;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Todo({
    this.slug,
    this.content,
    this.isDone,
    this.date,
    this.createdAt,
    this.updatedAt,
  });

  factory Todo.fromJson(String str) => Todo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Todo.fromMap(Map<String, dynamic> json) => Todo(
        slug: json["slug"],
        content: json["content"],
        isDone: json["is_done"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "slug": slug,
        "content": content,
        "is_done": isDone,
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
