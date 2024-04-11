import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

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

  testWidgets('Check if app navigate to AuthScreen if user is unauthorized',
      (WidgetTester tester) async {
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final buttonFinder = find.widgetWithText(Button, T.login);
    expect(buttonFinder, findsOneWidget);
  });
}
