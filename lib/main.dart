import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  diInit();
  runApp(const ArticlesApp());
}

class ArticlesApp extends StatelessWidget {
  const ArticlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: getIt<AppRouter>().config(),
      title: 'Articles',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
