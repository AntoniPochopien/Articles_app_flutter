import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:dartz/dartz.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> checkLogin(String login) async {
    // TODO: implement checkLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> login(
      {required String login, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> register(
      {required String login, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
