import 'dart:convert';

class LoginResponseModel {
  final bool? status;
  final String? message;
  final Data? data;
  final String? tokenType;
  final String? token;

  LoginResponseModel({
    this.status,
    this.message,
    this.data,
    this.tokenType,
    this.token,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        tokenType: json["token_type"],
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "status": status,
        "message": message,
        "data": data?.toMap(),
        "token_type": tokenType,
        "token": token,
      };
}

class Data {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? roleId;
  final dynamic githubId;
  final dynamic googleId;
  final dynamic avatar;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    this.id,
    this.name,
    this.username,
    this.email,
    this.roleId,
    this.githubId,
    this.googleId,
    this.avatar,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        roleId: json["role_id"],
        githubId: json["github_id"],
        googleId: json["google_id"],
        avatar: json["avatar"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "role_id": roleId,
        "github_id": githubId,
        "google_id": googleId,
        "avatar": avatar,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}
