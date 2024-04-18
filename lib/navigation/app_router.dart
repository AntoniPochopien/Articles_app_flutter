import 'package:articles_app_flutter/add_article/presentation/add_article_screen.dart';
import 'package:articles_app_flutter/app_startup/presentation/app_startup_screen.dart';
import 'package:articles_app_flutter/article_details/presentation/article_details_screen.dart';
import 'package:articles_app_flutter/auth/presentation/auth_screen.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/presentation/dashboard_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: AppStartupRoute.page, initial: true),
        AutoRoute(page: AuthRoute.page),
        AutoRoute(page: DashboardRoute.page),
        AutoRoute(page: AddArticleRoute.page),
        AutoRoute(page: ArticleDetailsRoute.page)
      ];
}
