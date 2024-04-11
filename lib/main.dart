import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/l10n/restart_app.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  diInit();
  runApp(const RestartApp(ArticlesApp()));
}

class ArticlesApp extends StatelessWidget {
  const ArticlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
      title: 'Articles',
      localizationsDelegates: L10n.localizationDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: L10n.getCurrent,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
