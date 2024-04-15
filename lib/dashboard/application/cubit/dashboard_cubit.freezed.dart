// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Article> articles,
      bool morePagesLoading,
      int actualPage,
      List<int> deletingInProgressArticleIds});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? morePagesLoading = null,
    Object? actualPage = null,
    Object? deletingInProgressArticleIds = null,
  }) {
    return _then(_$DataImpl(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      morePagesLoading: null == morePagesLoading
          ? _value.morePagesLoading
          : morePagesLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      actualPage: null == actualPage
          ? _value.actualPage
          : actualPage // ignore: cast_nullable_to_non_nullable
              as int,
      deletingInProgressArticleIds: null == deletingInProgressArticleIds
          ? _value._deletingInProgressArticleIds
          : deletingInProgressArticleIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$DataImpl implements _Data {
  const _$DataImpl(
      {required final List<Article> articles,
      required this.morePagesLoading,
      required this.actualPage,
      final List<int> deletingInProgressArticleIds = const []})
      : _articles = articles,
        _deletingInProgressArticleIds = deletingInProgressArticleIds;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final bool morePagesLoading;
  @override
  final int actualPage;
  final List<int> _deletingInProgressArticleIds;
  @override
  @JsonKey()
  List<int> get deletingInProgressArticleIds {
    if (_deletingInProgressArticleIds is EqualUnmodifiableListView)
      return _deletingInProgressArticleIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deletingInProgressArticleIds);
  }

  @override
  String toString() {
    return 'DashboardState.data(articles: $articles, morePagesLoading: $morePagesLoading, actualPage: $actualPage, deletingInProgressArticleIds: $deletingInProgressArticleIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.morePagesLoading, morePagesLoading) ||
                other.morePagesLoading == morePagesLoading) &&
            (identical(other.actualPage, actualPage) ||
                other.actualPage == actualPage) &&
            const DeepCollectionEquality().equals(
                other._deletingInProgressArticleIds,
                _deletingInProgressArticleIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articles),
      morePagesLoading,
      actualPage,
      const DeepCollectionEquality().hash(_deletingInProgressArticleIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) {
    return data(
        articles, morePagesLoading, actualPage, deletingInProgressArticleIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) {
    return data?.call(
        articles, morePagesLoading, actualPage, deletingInProgressArticleIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          articles, morePagesLoading, actualPage, deletingInProgressArticleIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements DashboardState {
  const factory _Data(
      {required final List<Article> articles,
      required final bool morePagesLoading,
      required final int actualPage,
      final List<int> deletingInProgressArticleIds}) = _$DataImpl;

  List<Article> get articles;
  bool get morePagesLoading;
  int get actualPage;
  List<int> get deletingInProgressArticleIds;
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DashboardState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$logoutImplCopyWith<$Res> {
  factory _$$logoutImplCopyWith(
          _$logoutImpl value, $Res Function(_$logoutImpl) then) =
      __$$logoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$logoutImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$logoutImpl>
    implements _$$logoutImplCopyWith<$Res> {
  __$$logoutImplCopyWithImpl(
      _$logoutImpl _value, $Res Function(_$logoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$logoutImpl implements _logout {
  const _$logoutImpl();

  @override
  String toString() {
    return 'DashboardState.logout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$logoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _logout implements DashboardState {
  const factory _logout() = _$logoutImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure reason});

  $FailureCopyWith<$Res> get reason;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$ErrorImpl(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get reason {
    return $FailureCopyWith<$Res>(_value.reason, (value) {
      return _then(_value.copyWith(reason: value));
    });
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.reason);

  @override
  final Failure reason;

  @override
  String toString() {
    return 'DashboardState.error(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)
        data,
    required TResult Function() loading,
    required TResult Function() logout,
    required TResult Function(Failure reason) error,
  }) {
    return error(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult? Function()? loading,
    TResult? Function()? logout,
    TResult? Function(Failure reason)? error,
  }) {
    return error?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Article> articles, bool morePagesLoading,
            int actualPage, List<int> deletingInProgressArticleIds)?
        data,
    TResult Function()? loading,
    TResult Function()? logout,
    TResult Function(Failure reason)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
    required TResult Function(_Loading value) loading,
    required TResult Function(_logout value) logout,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? data,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_logout value)? logout,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    TResult Function(_Loading value)? loading,
    TResult Function(_logout value)? logout,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DashboardState {
  const factory _Error(final Failure reason) = _$ErrorImpl;

  Failure get reason;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
