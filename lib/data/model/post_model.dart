import 'dart:convert';

class PostResponseModel {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostResponseModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  PostResponseModel copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      PostResponseModel(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory PostResponseModel.fromRawJson(String str) =>
      PostResponseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PostResponseModel.fromJson(Map<String, dynamic> json) =>
      PostResponseModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
