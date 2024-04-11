import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticlesScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  const ArticlesScaffold({super.key, this.appBar, this.body});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: appBar,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
          child: body,
        ),
      ),
    );
  }
}
