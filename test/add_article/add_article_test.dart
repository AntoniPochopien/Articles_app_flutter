import 'package:articles_app_flutter/add_article/domain/i_add_article_repository.dart';
import 'package:articles_app_flutter/add_article/presentation/pages/article_images_page.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'add_article_test.mocks.dart';

@GenerateMocks([IAddArticleRepository])
void main() {
  Future<void> pumpRouterApp(WidgetTester tester) async {
    final appRouter = AppRouter();
    appRouter.navigate(const AddArticleRoute());
    return await tester.pumpWidget(MaterialApp.router(
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.getCurrent,
      routerDelegate: appRouter.delegate(),
    ));
  }

  tearDown(() {
    getIt.unregister<IAddArticleRepository>();
  });

  testWidgets(
      'Check if publish cannot be clicked if title and content are empty',
      (tester) async {
    final addArticleRepository = MockIAddArticleRepository();
    getIt.registerLazySingleton<IAddArticleRepository>(
        () => addArticleRepository);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final publishButtonFinder = find.widgetWithText(Button, T.publish);
    expect(
        tester.widget<Button>(publishButtonFinder).onPressed == null, isTrue);
  });

  testWidgets('Check if page is switching on switch tap', (tester) async {
    final addArticleRepository = MockIAddArticleRepository();
    getIt.registerLazySingleton<IAddArticleRepository>(
        () => addArticleRepository);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final switchIconFinder =
        find.widgetWithIcon(Container, Icons.text_fields_outlined).first;
    await tester.tap(switchIconFinder);
    await tester.pumpAndSettle();
    final addImageIconFinder = find.byType(ArticleImagesPage);
    expect(addImageIconFinder, findsOneWidget);
  });

  testWidgets('Check if successful published dialog show up', (tester) async {
    final addArticleRepository = MockIAddArticleRepository();
    getIt.registerLazySingleton<IAddArticleRepository>(
        () => addArticleRepository);
    await pumpRouterApp(tester);
    await tester.pumpAndSettle();
    final titleInputFinder =
        find.widgetWithText(TextField, T.titleOfTheArticle);
    await tester.enterText(titleInputFinder, 'x');
    await tester.pumpAndSettle();
    final contentInputFinder = find.widgetWithText(TextField, T.articleContent);
    await tester.enterText(contentInputFinder, 'x');
    await tester.pumpAndSettle();
    when(addArticleRepository.publishArticle(
        title: 'x',
        content: 'x',
        images: [])).thenAnswer((_) async => right(unit));
    final publishButtonFinder = find.widgetWithText(Button, T.publish);
    await tester.tap(publishButtonFinder);
    await tester.pumpAndSettle();
    final successTextFinder = find.text(T.successfullyPublished);
    expect(successTextFinder, findsOneWidget);
  });
}
