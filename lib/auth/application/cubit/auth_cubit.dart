import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  final IAuthRepository _authRepository = getIt<IAuthRepository>();

  void login({required String login, required String password}) {}

  void register({required String login, required String password}) async {
    const AuthState.loading();
    final response =
        await _authRepository.register(login: login, password: password);
    response.fold((l) => emit(AuthState.error(l)),
        (r) => emit(const AuthState.registerSuccess()));
  }

  void checkLogin(String login) async {
    const AuthState.loading();
    final response = await _authRepository.checkLogin(login);
    response.fold(
        (l) => emit(AuthState.error(l)), (r) => const AuthState.initial());
  }
}