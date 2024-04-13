import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticleContentPage extends StatelessWidget {
  const ArticleContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Article content...', border: InputBorder.none),
        keyboardType: TextInputType.multiline,
        expands: true,
        maxLines: null,
      ),
    );
  }
}
