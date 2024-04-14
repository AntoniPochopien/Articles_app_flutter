import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:image_picker/image_picker.dart';

abstract class IAddArticleRepository {
  Future<Either<Failure, Unit>> publishArticle({
    required String title,
    required String content,
    required List<XFile> images,
  });
}
