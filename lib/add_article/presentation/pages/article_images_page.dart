import 'dart:io';

import 'package:articles_app_flutter/add_article/application/cubit/add_article_cubit.dart';
import 'package:articles_app_flutter/add_article/presentation/widgets/add_image_button.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleImagesPage extends StatelessWidget {
  const ArticleImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddArticleCubit, AddArticleState>(
      builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
          child: state.images.isEmpty
              ? const Column(
                  children: [
                    Expanded(child: AddImageButton()),
                    SizedBox(height: Dim.verticalPadding)
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                      child: ReorderableListView(
                        onReorder: (oldIndex, newIndex) => context
                            .read<AddArticleCubit>()
                            .updateImagesOrder(
                                oldIndex: oldIndex, newIndex: newIndex),
                        footer:
                            const SizedBox(height: 80, child: AddImageButton()),
                        children: [
                          ...state.images.map((e) => Padding(
                                key: ValueKey(e),
                                padding: const EdgeInsets.symmetric(
                                    vertical: Dim.verticalPadding),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(Dim.radius),
                                      child: Image.file(File(e.path))),
                                ),
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(height: Dim.verticalPadding)
                  ],
                )),
    );
  }
}
