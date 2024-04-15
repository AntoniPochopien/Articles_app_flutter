import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/domain/filters.dart';
import 'package:articles_app_flutter/dashboard/domain/i_dashboard_repository.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());
  final _dashboardRepository = getIt<IDashboardRepository>();
  final _localStorageRepository = getIt<ILocalStorageRepository>();

  void fetchData(Filters filter) async {
    emit(const DashboardState.loading());
    final response =
        await _dashboardRepository.getArticles(page: 0, filter: filter);
    response.fold(
        (l) => emit(DashboardState.error(l)),
        (articles) => emit(DashboardState.data(
            articles: articles, morePagesLoading: false, actualPage: 0)));
  }

  void loadMoreArticles({required int page, required Filters filter}) async {
    state.mapOrNull(data: (value) async {
      emit(DashboardState.data(
        articles: value.articles,
        morePagesLoading: true,
        actualPage: value.actualPage,
      ));
      final response =
          await _dashboardRepository.getArticles(page: page, filter: filter);
      response.fold((l) => emit(DashboardState.error(l)), (newArticles) {
        if (newArticles.isNotEmpty) {
          final articles = List<Article>.from(value.articles);
          emit(DashboardState.data(
            articles: articles..addAll(newArticles),
            morePagesLoading: false,
            actualPage: page,
          ));
        } else {
          emit(DashboardState.data(
            articles: value.articles,
            morePagesLoading: false,
            actualPage: value.actualPage,
          ));
        }
      });
    });
  }

  void deleteArticle(int id) async {
    state.mapOrNull(
      data: (value) async {
        final deletingInProgressArticleIds =
            List<int>.from(value.deletingInProgressArticleIds)..add(id);
        emit(DashboardState.data(
            articles: value.articles,
            morePagesLoading: value.morePagesLoading,
            actualPage: value.actualPage,
            deletingInProgressArticleIds: deletingInProgressArticleIds));
        final response = await _dashboardRepository.removeArticle(id);
        response.fold((l) => emit(DashboardState.error(l)), (r) {
          final newArticles = List<Article>.from(value.articles)
            ..removeWhere((element) => element.id == id);
          emit(DashboardState.data(
            articles: newArticles,
            morePagesLoading: value.morePagesLoading,
            actualPage: value.actualPage,
            deletingInProgressArticleIds: deletingInProgressArticleIds
              ..remove(id),
          ));
        });
      },
    );
  }

  void logout() {
    _localStorageRepository.updateUser(null);
    emit(const DashboardState.logout());
  }
}
