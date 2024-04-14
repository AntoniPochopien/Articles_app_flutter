import 'dart:developer';

import 'package:articles_app_flutter/add_article/domain/i_add_article_repository.dart';
import 'package:articles_app_flutter/common/constants/api.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/common/utils/error_handler.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class AddArticleRepository implements IAddArticleRepository {
  final authenticatedUser = getIt<AuthenticatedUser>();

  @override
  Future<Either<Failure, Unit>> publishArticle(
      {required String title,
      required String content,
      required List<XFile> images}) async {
    try {
      var request =
          http.MultipartRequest('POST', Uri.parse('${Api.url}/articles'));
      request.headers.addAll(Api.headers(
          token: authenticatedUser.user.accessToken, isMultiPart: true));
      request.fields.addAll({
        'title': title,
        'content': content,
      });
      List<http.MultipartFile> files = [];
      for (XFile file in images) {
        var f = await http.MultipartFile.fromPath('images', file.path);
        files.add(f);
      }
      request.files.addAll(files);
      final response = await request.send();
      return ErrorHalnder.getFailureFromStatusCode(
          statusCode: response.statusCode, source: 'addArticle');
    } catch (e) {
      log('addArticle error: $e');
      return left(const Failure.unauthorized());
    }
  }
}
