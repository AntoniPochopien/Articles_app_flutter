import 'package:articles_app_flutter/common/models/simple_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class Article with _$Article {
  const Article._();

  const factory Article({
    required int id,
    required String title,
    required String content,
    required SimpleUser owner,
    required List<String> images,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      owner: SimpleUser(
        id: json['owner']['id'],
        username: json['owner']['username'],
      ),
      images: (json['images'] as List).map((e) => e.toString()).toList());
}
