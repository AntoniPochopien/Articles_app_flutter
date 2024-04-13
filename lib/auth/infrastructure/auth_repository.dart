import 'dart:convert';
import 'dart:developer';
import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/constants/api.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/common/utils/error_handler.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class AuthRepository implements IAuthRepository {
  @override
  Future<Either<Failure, Unit>> checkUsername(String username) async {
    try {
      final response = await http
          .get(Uri.parse('${Api.url}/users/exist?username=$username'));
      return ErrorHalnder.getFailureFromStatusCode(
              statusCode: response.statusCode, source: 'checkUsername')
          .fold((l) => left(l), (r) {
        final json = jsonDecode(response.body);
        if (json['exist']) {
          return left(const Failure.notUnique());
        } else {
          return right(unit);
        }
      });
    } catch (e) {
      log('checkUsername error: $e');
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, User>> login(
      {required String username, required String password}) async {
    try {
      final payload = jsonEncode({'username': username, 'password': password});
      final response =
          await http.post(Uri.parse('${Api.url}/auth/login'), body: payload);
      return ErrorHalnder.getFailureFromStatusCode(
              statusCode: response.statusCode, source: 'login')
          .fold((l) => left(l), (r) {
        final json = jsonDecode(response.body);
        return right(User.fromJson(json));
      });
    } catch (e) {
      log('login error: $e');
      return left(const Failure.unexpected());
    }
  }

  @override
  Future<Either<Failure, Unit>> register(
      {required String username, required String password}) async {
    try {
      final payload = jsonEncode({'username': username, 'password': password});
      final response =
          await http.post(Uri.parse('${Api.url}/auth/register'), body: payload);
      return ErrorHalnder.getFailureFromStatusCode(
          statusCode: response.statusCode, source: 'register');
    } catch (e) {
      log('register error: $e');
      return left(const Failure.unexpected());
    }
  }
}
