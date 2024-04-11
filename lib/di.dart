import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton(() => AppRouter());
}
