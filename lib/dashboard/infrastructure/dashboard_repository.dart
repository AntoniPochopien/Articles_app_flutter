import 'dart:convert';
import 'dart:developer';

import 'package:articles_app_flutter/common/constants/api.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/common/utils/error_handler.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/domain/i_dashboard_repository.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class DashboardRepository implements IDashboardRepository {
  final _authenticatedUser = getIt<AuthenticatedUser>();

  @override
  Future<Either<Failure, List<Article>>> getArticles(int page) async {
    try {
      final response = await http.get(
          Uri.parse('${Api.url}/articles?page=$page'),
          headers: Api.headers(token: _authenticatedUser.user.accessToken));
      return ErrorHalnder.getFailureFromStatusCode(
              statusCode: response.statusCode, source: 'getArticles')
          .fold((l) => left(l), (r) {
        final json = jsonDecode(response.body);
        final content = json['content'] as List;
        final articles = content.map((e) => Article.fromJson(e));
        return right(articles.toList());
      });
    } catch (e) {
      log('getArticles error: $e');
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, Unit>> removeArticle(int articleId) async {
    try {
      final response = await http.delete(
          Uri.parse('${Api.url}/articles?id=$articleId'),
          headers: Api.headers(token: _authenticatedUser.user.accessToken));
      return ErrorHalnder.getFailureFromStatusCode(
          statusCode: response.statusCode, source: 'removeArticle');
    } catch (e) {
      log('removeArticle error: $e');
      return left(const Failure.unexpected());
    }
  }
}
