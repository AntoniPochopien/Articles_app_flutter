import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddArticleScreen extends StatelessWidget {
  const AddArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ArticlesScaffold(
      appBar: ArticlesAppBar(
        title: T.addArticle,
      ),
    );
  }
}
