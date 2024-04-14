part of 'add_article_cubit.dart';

@freezed
class AddArticleState with _$AddArticleState {
  const factory AddArticleState({
    @Default('') String title,
    @Default('') String description,
    @Default([]) List<XFile> images,
    @Default(false) bool isLoading,
    Failure? error,
  }) = _AddArticleState;
}
