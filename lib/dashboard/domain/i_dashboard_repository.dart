import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/domain/filters.dart';
import 'package:dartz/dartz.dart';

abstract class IDashboardRepository {
  Future<Either<Failure, List<Article>>> getArticles(
      {required int page, required Filters filter});
  Future<Either<Failure, Unit>> removeArticle(int articleId);
}
