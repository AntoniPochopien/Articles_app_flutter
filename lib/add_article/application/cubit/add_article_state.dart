part of 'add_article_cubit.dart';

@freezed
class AddArticleState with _$AddArticleState {
  const factory AddArticleState({
    @Default('') String title,
    @Default('') String content,
    @Default([]) List<XFile> images,
    @Default(false) bool isLoading,
    @Default(false) bool successfulyPublished,
    Failure? error,
  }) = _AddArticleState;
}
