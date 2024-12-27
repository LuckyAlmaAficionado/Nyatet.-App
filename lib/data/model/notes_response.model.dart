import 'dart:convert';

class NotesResponseModel {
  final bool? status;
  final int? statusCode;
  final List<Note>? notes;
  final Paginate? paginate;

  NotesResponseModel({
    this.status,
    this.statusCode,
    this.notes,
    this.paginate,
  });

  factory NotesResponseModel.fromJson(String str) =>
      NotesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory NotesResponseModel.fromMap(Map<String, dynamic> json) =>
      NotesResponseModel(
        status: json["status"],
        statusCode: json["statusCode"],
        notes: json["notes"] == null
            ? []
            : List<Note>.from(json["notes"]!.map((x) => Note.fromMap(x))),
        paginate: json["paginate"] == null
            ? null
            : Paginate.fromMap(json["paginate"]),
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "statusCode": statusCode,
        "notes": notes == null
            ? []
            : List<dynamic>.from(notes!.map((x) => x.toMap())),
        "paginate": paginate?.toMap(),
      };
}

class Note {
  final String? slug;
  final String? title;
  final String? note;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Note({
    this.slug,
    this.title,
    this.note,
    this.createdAt,
    this.updatedAt,
  });

  factory Note.fromJson(String str) => Note.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Note.fromMap(Map<String, dynamic> json) => Note(
        slug: json["slug"],
        title: json["title"],
        note: json["note"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "slug": slug,
        "title": title,
        "note": note,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Paginate {
  final int? currentPage;
  final int? perPage;
  final int? from;
  final int? to;
  final String? path;
  final String? firstPageUrl;
  final dynamic nextPageUrl;
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
