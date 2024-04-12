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

  void login({required String username, required String password}) async {
    emit(const AuthState.loading());
    final response =
        await _authRepository.login(username: username, password: password);
    response.fold((l) => emit(AuthState.error(l)),
        (r) => emit(const AuthState.authorized()));
  }

  void register({required String username, required String password}) async {
    emit(const AuthState.loading());
    final response =
        await _authRepository.register(username: username, password: password);
    response.fold((l) => emit(AuthState.error(l)),
        (r) => emit(const AuthState.registerSuccess()));
  }

  void checkUsername(String username) async {
    emit(const AuthState.loading());
    final response = await _authRepository.checkUsername(username);
    response.fold((l) => emit(AuthState.error(l)),
        (r) => emit(const AuthState.initial()));
  }
}
