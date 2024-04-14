import 'package:articles_app_flutter/add_article/domain/i_add_article_repository.dart';
import 'package:articles_app_flutter/add_article/infrastructure/add_article_repository.dart';
import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/auth/infrastructure/auth_repository.dart';
import 'package:articles_app_flutter/dashboard/domain/i_dashboard_repository.dart';
import 'package:articles_app_flutter/dashboard/infrastructure/dashboard_repository.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:articles_app_flutter/local_storage/infrastructure/local_storage_repository.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton(() => AppRouter());
  getIt.registerLazySingleton<ILocalStorageRepository>(
      () => LocalStorageRepository());
  getIt.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  getIt.registerLazySingleton<IAddArticleRepository>(
      () => AddArticleRepository());
  getIt
      .registerLazySingleton<IDashboardRepository>(() => DashboardRepository());
  getIt.registerLazySingleton(() => AuthenticatedUser(User.none()));
}
