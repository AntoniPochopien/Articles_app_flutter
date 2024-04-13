import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/user.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_test.mocks.dart';

@GenerateMocks([IAuthRepository])
void main() {
  Future<void> pumpRouterApp(WidgetTester tester) async {
    final appRouter = AppRouter();
    appRouter.navigate(const AuthRoute());
    return await tester.pumpWidget(MaterialApp.router(
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.getCurrent,
      routerDelegate: appRouter.delegate(),
    ));
  }

  tearDown(() {
    getIt.unregister<IAuthRepository>();
  });

  testWidgets('Check if app detect already taken username', (tester) async {
    final authRepository = MockIAuthRepository();
    getIt.registerLazySingleton<IAuthRepository>(() => authRepository);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final buttonFinder = find.widgetWithText(TextButton, T.register);
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();
    final usernameInputFinder = find.widgetWithText(TextField, T.username);
    when(authRepository.checkUsername('xxxx'))
        .thenAnswer((_) async => left(const Failure.notUnique()));
    await tester.enterText(usernameInputFinder, 'xxxx');
    await tester.pumpAndSettle();
    final registerBtnFinder = find.widgetWithText(Button, T.register);
    await tester.tap(registerBtnFinder);
    await tester.pumpAndSettle();
    final findErrorText = find.text(T.theUsernameIsAlreadyTaken);
    expect(findErrorText, findsOneWidget);
  });

  testWidgets('Check if app show register success dialog', (tester) async {
    final authRepository = MockIAuthRepository();
    getIt.registerLazySingleton<IAuthRepository>(() => authRepository);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final buttonFinder = find.widgetWithText(TextButton, T.register);
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();

    final usernameInputFinder = find.widgetWithText(TextField, T.username);
    when(authRepository.checkUsername('xxxx'))
        .thenAnswer((_) async => right(unit));
    await tester.enterText(usernameInputFinder, 'xxxx');
    await tester.pumpAndSettle();

    final pwdInputFinder = find.widgetWithText(TextField, T.password);
    when(authRepository.register(username: 'xxxx', password: '123456'))
        .thenAnswer((_) async => right(unit));
    await tester.enterText(pwdInputFinder, '123456');
    await tester.pumpAndSettle();

    final repeatPwdInputFinder =
        find.widgetWithText(TextField, T.repeatPassword);
    await tester.enterText(repeatPwdInputFinder, '123456');
    await tester.pumpAndSettle();

    final registerBtnFinder = find.widgetWithText(Button, T.register);
    await tester.tap(registerBtnFinder);
    await tester.pumpAndSettle();
    final findDialogTilte = find.text(T.registeredSuccessfully);
    expect(findDialogTilte, findsOneWidget);
  });

  testWidgets('Check if successful login navigate to dashboard',
      (tester) async {
    final authRepository = MockIAuthRepository();
    getIt.registerLazySingleton<IAuthRepository>(() => authRepository);
    await pumpRouterApp(tester);
    when(authRepository.login(username: 'xxxx', password: '123456'))
        .thenAnswer((_) async => right(User.none()));
    final usernameInputFinder = find.widgetWithText(TextField, T.username);
    await tester.enterText(usernameInputFinder, 'xxxx');
    await tester.pumpAndSettle();

    final pwdInputFinder = find.widgetWithText(TextField, T.password);
    await tester.enterText(pwdInputFinder, '123456');
    await tester.pumpAndSettle();

    final loginBtnFinder = find.widgetWithText(Button, T.login);
    await tester.tap(loginBtnFinder);
    await tester.pumpAndSettle();

    final appBarFinder = find.widgetWithText(AppBar, T.appName);
    expect(appBarFinder, findsOneWidget);
  });
}
