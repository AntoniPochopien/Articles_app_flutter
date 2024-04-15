import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticlesScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? floatingActionButton;
  final Widget? endDrawer;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  const ArticlesScaffold({
    super.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.endDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: appBar,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        endDrawer: endDrawer,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
          child: body,
        ),
      ),
    );
  }
}
