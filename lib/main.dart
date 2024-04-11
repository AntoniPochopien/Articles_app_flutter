import 'package:articles_app_flutter/dashboard/presentation/dashboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ArticlesApp());
}

class ArticlesApp extends StatelessWidget {
  const ArticlesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Articles',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const DashboardScreen(),
    );
  }
}
