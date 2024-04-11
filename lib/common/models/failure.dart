import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.cannotReach() = _CannotReach;
  const factory Failure.forbidden() = _Forbidden;
  const factory Failure.notUnique() = _NotUnique;
  const factory Failure.unexpected() = _Unexpected;
}
