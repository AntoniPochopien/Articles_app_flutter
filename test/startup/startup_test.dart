import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'startup_test.mocks.dart';

@GenerateMocks([ILocalStorageRepository, IAuthRepository, AuthenticatedUser])
void main() {
  Future<void> pumpRouterApp(WidgetTester tester) async {
    final appRouter = AppRouter();
    final authRepository = MockIAuthRepository();
    final authenticatedUser = MockAuthenticatedUser();
    getIt.registerLazySingleton<IAuthRepository>(() => authRepository);
    getIt.registerLazySingleton<AuthenticatedUser>(() => authenticatedUser);
    appRouter.navigate(const AppStartupRoute());
    return await tester.pumpWidget(MaterialApp.router(
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.getCurrent,
      routerDelegate: appRouter.delegate(),
    ));
  }

  tearDown(() {
    getIt.unregister<IAuthRepository>();
    getIt.unregister<ILocalStorageRepository>();
    getIt.unregister<AuthenticatedUser>();
  });

  testWidgets('Check if app navigate to AuthScreen if user is unauthorized',
      (WidgetTester tester) async {
    final localStorageRepository = MockILocalStorageRepository();
    getIt.registerLazySingleton<ILocalStorageRepository>(
        () => localStorageRepository);
    when(localStorageRepository.readUser()).thenAnswer((_) => null);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final buttonFinder = find.widgetWithText(Button, T.login);
    expect(buttonFinder, findsOneWidget);
  });

  testWidgets('Check if app navigate to Dashboard if user is authorized',
      (WidgetTester tester) async {
    final localStorageRepository = MockILocalStorageRepository();
    getIt.registerLazySingleton<ILocalStorageRepository>(
        () => localStorageRepository);
    when(localStorageRepository.readUser()).thenAnswer(
        (_) => const User(id: 'xx', accessToken: 'xxx', username: 'xxx'));
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final appBarFinder = find.widgetWithText(AppBar, T.appName);
    expect(appBarFinder, findsOneWidget);
  });
}
