import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'startup_state.dart';
part 'startup_cubit.freezed.dart';

class StartupCubit extends Cubit<StartupState> {
  StartupCubit() : super(const StartupState.initial());

  final _localStorageRepository = getIt<ILocalStorageRepository>();

  void init() {
    final user = _localStorageRepository.readUser();
    //Emit is too fast, listener is not attached at this point, delayed Duration.zero is workaround
    Future.delayed(Duration.zero, () {
      if (user != null &&
          user.accessToken.isNotEmpty &&
          user.username.isNotEmpty) {
        getIt<AuthenticatedUser>().updateUser(user);
        emit(const StartupState.authorized());
      } else {
        emit(const StartupState.unauthorized());
      }
    });
  }
}
