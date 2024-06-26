part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.data({
    required List<Article> articles,
    required bool morePagesLoading,
    required int actualPage,
    @Default([]) List<int> deletingInProgressArticleIds,
  }) = _Data;
  const factory DashboardState.loading() = _Loading;
  const factory DashboardState.logout() = _logout;
  const factory DashboardState.error(Failure reason) = _Error;
}
