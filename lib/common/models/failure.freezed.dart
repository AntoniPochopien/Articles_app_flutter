// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotReach,
    required TResult Function() forbidden,
    required TResult Function() notUnique,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotReach,
    TResult? Function()? forbidden,
    TResult? Function()? notUnique,
    TResult? Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotReach,
    TResult Function()? forbidden,
    TResult Function()? notUnique,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotReach value) cannotReach,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotUnique value) notUnique,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotReach value)? cannotReach,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotUnique value)? notUnique,
    TResult? Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotReach value)? cannotReach,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotUnique value)? notUnique,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CannotReachImplCopyWith<$Res> {
  factory _$$CannotReachImplCopyWith(
          _$CannotReachImpl value, $Res Function(_$CannotReachImpl) then) =
      __$$CannotReachImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CannotReachImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CannotReachImpl>
    implements _$$CannotReachImplCopyWith<$Res> {
  __$$CannotReachImplCopyWithImpl(
      _$CannotReachImpl _value, $Res Function(_$CannotReachImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CannotReachImpl implements _CannotReach {
  const _$CannotReachImpl();

  @override
  String toString() {
    return 'Failure.cannotReach()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CannotReachImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotReach,
    required TResult Function() forbidden,
    required TResult Function() notUnique,
    required TResult Function() unexpected,
  }) {
    return cannotReach();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotReach,
    TResult? Function()? forbidden,
    TResult? Function()? notUnique,
    TResult? Function()? unexpected,
  }) {
    return cannotReach?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotReach,
    TResult Function()? forbidden,
    TResult Function()? notUnique,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (cannotReach != null) {
      return cannotReach();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotReach value) cannotReach,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotUnique value) notUnique,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return cannotReach(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotReach value)? cannotReach,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotUnique value)? notUnique,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return cannotReach?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotReach value)? cannotReach,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotUnique value)? notUnique,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (cannotReach != null) {
      return cannotReach(this);
    }
    return orElse();
  }
}

abstract class _CannotReach implements Failure {
  const factory _CannotReach() = _$CannotReachImpl;
}

/// @nodoc
abstract class _$$ForbiddenImplCopyWith<$Res> {
  factory _$$ForbiddenImplCopyWith(
          _$ForbiddenImpl value, $Res Function(_$ForbiddenImpl) then) =
      __$$ForbiddenImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ForbiddenImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ForbiddenImpl>
    implements _$$ForbiddenImplCopyWith<$Res> {
  __$$ForbiddenImplCopyWithImpl(
      _$ForbiddenImpl _value, $Res Function(_$ForbiddenImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ForbiddenImpl implements _Forbidden {
  const _$ForbiddenImpl();

  @override
  String toString() {
    return 'Failure.forbidden()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ForbiddenImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotReach,
    required TResult Function() forbidden,
    required TResult Function() notUnique,
    required TResult Function() unexpected,
  }) {
    return forbidden();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotReach,
    TResult? Function()? forbidden,
    TResult? Function()? notUnique,
    TResult? Function()? unexpected,
  }) {
    return forbidden?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotReach,
    TResult Function()? forbidden,
    TResult Function()? notUnique,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotReach value) cannotReach,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotUnique value) notUnique,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotReach value)? cannotReach,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotUnique value)? notUnique,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotReach value)? cannotReach,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotUnique value)? notUnique,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _Forbidden implements Failure {
  const factory _Forbidden() = _$ForbiddenImpl;
}

/// @nodoc
abstract class _$$NotUniqueImplCopyWith<$Res> {
  factory _$$NotUniqueImplCopyWith(
          _$NotUniqueImpl value, $Res Function(_$NotUniqueImpl) then) =
      __$$NotUniqueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotUniqueImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotUniqueImpl>
    implements _$$NotUniqueImplCopyWith<$Res> {
  __$$NotUniqueImplCopyWithImpl(
      _$NotUniqueImpl _value, $Res Function(_$NotUniqueImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotUniqueImpl implements _NotUnique {
  const _$NotUniqueImpl();

  @override
  String toString() {
    return 'Failure.notUnique()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotUniqueImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotReach,
    required TResult Function() forbidden,
    required TResult Function() notUnique,
    required TResult Function() unexpected,
  }) {
    return notUnique();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotReach,
    TResult? Function()? forbidden,
    TResult? Function()? notUnique,
    TResult? Function()? unexpected,
  }) {
    return notUnique?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotReach,
    TResult Function()? forbidden,
    TResult Function()? notUnique,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (notUnique != null) {
      return notUnique();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotReach value) cannotReach,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotUnique value) notUnique,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return notUnique(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotReach value)? cannotReach,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotUnique value)? notUnique,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return notUnique?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotReach value)? cannotReach,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotUnique value)? notUnique,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (notUnique != null) {
      return notUnique(this);
    }
    return orElse();
  }
}

abstract class _NotUnique implements Failure {
  const factory _NotUnique() = _$NotUniqueImpl;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'Failure.unexpected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cannotReach,
    required TResult Function() forbidden,
    required TResult Function() notUnique,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cannotReach,
    TResult? Function()? forbidden,
    TResult? Function()? notUnique,
    TResult? Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cannotReach,
    TResult Function()? forbidden,
    TResult Function()? notUnique,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CannotReach value) cannotReach,
    required TResult Function(_Forbidden value) forbidden,
    required TResult Function(_NotUnique value) notUnique,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CannotReach value)? cannotReach,
    TResult? Function(_Forbidden value)? forbidden,
    TResult? Function(_NotUnique value)? notUnique,
    TResult? Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CannotReach value)? cannotReach,
    TResult Function(_Forbidden value)? forbidden,
    TResult Function(_NotUnique value)? notUnique,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected() = _$UnexpectedImpl;
}
