import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:dartz/dartz.dart';

class AuthRepository implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> checkUsername(String login) async {
    // TODO: implement checkLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, User>> login(
      {required String username, required String password}) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> register(
      {required String username, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
