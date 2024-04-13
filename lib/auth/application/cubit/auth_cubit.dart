import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  final _authRepository = getIt<IAuthRepository>();
  final _localStorageRepository = getIt<ILocalStorageRepository>();
  final _authenticatedUser = getIt<AuthenticatedUser>();

  void login({required String username, required String password}) async {
    emit(const AuthState.loading());
    final response =
        await _authRepository.login(username: username, password: password);
    response.fold((l) => emit(AuthState.error(l)), (user) {
      _authenticatedUser.updateUser(user);
      _localStorageRepository.updateUser(user);
      emit(const AuthState.authorized());
    });
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
