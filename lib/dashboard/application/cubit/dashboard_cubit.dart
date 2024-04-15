import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/domain/i_dashboard_repository.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_state.dart';
part 'dashboard_cubit.freezed.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(const DashboardState.initial());
  final _dashboardRepository = getIt<IDashboardRepository>();

  void fetchData() async {
    emit(const DashboardState.loading());
    final response = await _dashboardRepository.getArticles(0);
    response.fold(
        (l) => emit(DashboardState.error(l)),
        (articles) => emit(DashboardState.data(
            articles: articles, morePagesLoading: false, actualPage: 0)));
  }

  void loadMoreArticles(int page) async {
    state.mapOrNull(data: (value) async {
      emit(DashboardState.data(
          articles: value.articles,
          morePagesLoading: true,
          actualPage: value.actualPage));
      final response = await _dashboardRepository.getArticles(page);
      response.fold((l) => emit(DashboardState.error(l)), (newArticles) {
        if (newArticles.isNotEmpty) {
          final articles = List<Article>.from(value.articles);
          emit(DashboardState.data(
              articles: articles..addAll(newArticles),
              morePagesLoading: false,
              actualPage: page));
        } else {
          emit(DashboardState.data(
              articles: value.articles,
              morePagesLoading: false,
              actualPage: value.actualPage));
        }
      });
    });
  }

  void logout() {
    emit(const DashboardState.logout());
  }
}
