import 'package:articles_app_flutter/add_article/application/cubit/add_article_cubit.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleContentPage extends StatelessWidget {
  const ArticleContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: TextField(
        decoration: const InputDecoration(
            hintText: 'Article content...', border: InputBorder.none),
        keyboardType: TextInputType.multiline,
        expands: true,
        maxLines: null,
        onChanged: (value) =>
            context.read<AddArticleCubit>().updateDescription(value),
      ),
    );
  }
}
