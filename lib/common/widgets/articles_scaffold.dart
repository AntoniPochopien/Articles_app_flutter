import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticlesScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? drawer;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const ArticlesScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        drawer: drawer,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
          child: body,
        ),
      ),
    );
  }
}
