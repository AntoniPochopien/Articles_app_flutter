import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, Unit>> login(
      {required String login, required String password});
  Future<Either<Failure, Unit>> register(
      {required String login, required String password});
  Future<Either<Failure, Unit>> checkLogin(String login);
}
