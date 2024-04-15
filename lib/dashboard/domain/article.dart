import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class Article with _$Article {
  const Article._();

  const factory Article({
    required int id,
    required String title,
    required String content,
    required String owner,
    required String ownerId,
    required List<String> images,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      owner: json['owner']['username'],
      ownerId: json['owner']['id'],
      images: (json['images'] as List).map((e) => e.toString()).toList());
}
