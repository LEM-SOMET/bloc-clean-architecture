class PostEntity {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostEntity({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory PostEntity.fromJson(Map<String, dynamic> json) {
    return PostEntity(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
    );
  }
}
