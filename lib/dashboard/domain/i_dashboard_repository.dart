import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:dartz/dartz.dart';

abstract class IDashboardRepository {
  Future<Either<Failure, List<Article>>> getArticles(int page);
}
