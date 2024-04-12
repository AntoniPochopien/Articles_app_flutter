import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<Failure, User>> login(
      {required String username, required String password});
  Future<Either<Failure, Unit>> register(
      {required String username, required String password});
  Future<Either<Failure, Unit>> checkUsername(String login);
}
