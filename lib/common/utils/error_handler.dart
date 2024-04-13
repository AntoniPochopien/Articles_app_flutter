import 'dart:developer';

import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:dartz/dartz.dart';

class ErrorHalnder {
  static Either<Failure, Unit> getFailureFromStatusCode(
      {required int statusCode, required String source, String? data}) {
    log('$source ${statusCode > 399 ? 'error' : 'success'}, statusCode: $statusCode');
    if (statusCode == 200 ||
        statusCode == 201 ||
        statusCode == 204 ||
        statusCode == 302) {
      return right(unit);
    } else if (statusCode == 404) {
      return left(const Failure.cannotReach());
    } else if (statusCode == 401) {
      return left(const Failure.unauthorized());
    } else if (statusCode == 403) {
      return left(const Failure.forbidden());
    } else {
      return left(const Failure.unexpected());
    }
  }
}
