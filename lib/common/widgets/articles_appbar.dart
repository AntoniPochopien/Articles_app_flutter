import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';

class ArticlesAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ArticlesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(T.appName),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
