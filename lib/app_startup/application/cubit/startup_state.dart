part of 'startup_cubit.dart';

@freezed
class StartupState with _$StartupState {
  const factory StartupState.initial() = _Initial;
  const factory StartupState.authorized() = _Authorized;
  const factory StartupState.unauthorized() = _Unauthorized;
}
