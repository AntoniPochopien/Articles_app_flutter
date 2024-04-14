// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_article_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddArticleState {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<XFile> get images => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Failure? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddArticleStateCopyWith<AddArticleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddArticleStateCopyWith<$Res> {
  factory $AddArticleStateCopyWith(
          AddArticleState value, $Res Function(AddArticleState) then) =
      _$AddArticleStateCopyWithImpl<$Res, AddArticleState>;
  @useResult
  $Res call(
      {String title,
      String description,
      List<XFile> images,
      bool isLoading,
      Failure? error});
}

/// @nodoc
class _$AddArticleStateCopyWithImpl<$Res, $Val extends AddArticleState>
    implements $AddArticleStateCopyWith<$Res> {
  _$AddArticleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddArticleStateImplCopyWith<$Res>
    implements $AddArticleStateCopyWith<$Res> {
  factory _$$AddArticleStateImplCopyWith(_$AddArticleStateImpl value,
          $Res Function(_$AddArticleStateImpl) then) =
      __$$AddArticleStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String description,
      List<XFile> images,
      bool isLoading,
      Failure? error});
}

/// @nodoc
class __$$AddArticleStateImplCopyWithImpl<$Res>
    extends _$AddArticleStateCopyWithImpl<$Res, _$AddArticleStateImpl>
    implements _$$AddArticleStateImplCopyWith<$Res> {
  __$$AddArticleStateImplCopyWithImpl(
      _$AddArticleStateImpl _value, $Res Function(_$AddArticleStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? images = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AddArticleStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<XFile>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$AddArticleStateImpl implements _AddArticleState {
  const _$AddArticleStateImpl(
      {this.title = '',
      this.description = '',
      final List<XFile> images = const [],
      this.isLoading = false,
      this.error})
      : _images = images;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String description;
  final List<XFile> _images;
  @override
  @JsonKey()
  List<XFile> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Failure? error;

  @override
  String toString() {
    return 'AddArticleState(title: $title, description: $description, images: $images, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddArticleStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_images),
      isLoading,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddArticleStateImplCopyWith<_$AddArticleStateImpl> get copyWith =>
      __$$AddArticleStateImplCopyWithImpl<_$AddArticleStateImpl>(
          this, _$identity);
}

abstract class _AddArticleState implements AddArticleState {
  const factory _AddArticleState(
      {final String title,
      final String description,
      final List<XFile> images,
      final bool isLoading,
      final Failure? error}) = _$AddArticleStateImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  List<XFile> get images;
  @override
  bool get isLoading;
  @override
  Failure? get error;
  @override
  @JsonKey(ignore: true)
  _$$AddArticleStateImplCopyWith<_$AddArticleStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
