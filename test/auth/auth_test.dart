import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/common/models/failure.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/di.dart';
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
    appRouter.navigate(const AppStartupRoute());
    return await tester.pumpWidget(MaterialApp.router(
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.getCurrent,
      routerDelegate: appRouter.delegate(),
    ));
  }

  testWidgets('Check if app detect already taken username',
      (WidgetTester tester) async {
    await pumpRouterApp(tester);
    final authRepository = MockIAuthRepository();
    getIt.registerLazySingleton<IAuthRepository>(() => authRepository);

    await tester.pumpAndSettle();
    final buttonFinder = find.widgetWithText(TextButton, T.register);
    await tester.tap(buttonFinder);
    await tester.pumpAndSettle();
    final loginInputFinder = find.widgetWithText(TextField, T.login);
    when(authRepository.checkUsername('xxxx'))
        .thenAnswer((_) async => left(const Failure.notUnique()));
    await tester.enterText(loginInputFinder, 'xxxx');
    await tester.pumpAndSettle();
    await tester.pump(const Duration(milliseconds: 2000));
    final registerBtnFinder = find.widgetWithText(Button, T.register);
    await tester.tap(registerBtnFinder);
    await tester.pumpAndSettle();
    final findErrorText = find.text(T.theLoginIsAlreadyTaken);
    expect(findErrorText, findsOneWidget);
  });
}
