import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/tile_images_view.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleTile extends StatelessWidget {
  final Article article;
  final bool deletionInProgress;
  const ArticleTile(
      {super.key, required this.article, required this.deletionInProgress});
  static const _contentPreviewLength = 200;

  String normalizeContent(String content) {
    if (content.length <= _contentPreviewLength) {
      return content;
    } else {
      return '${content.substring(0, _contentPreviewLength)}...';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dim.verticalPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).secondaryHeaderColor,
          borderRadius: BorderRadius.circular(Dim.radius),
        ),
        child: Column(
          children: [
            if (article.images.isNotEmpty)
              SizedBox(
                  height: 250,
                  child: TileImagesView(imagesUrl: article.images)),
            Padding(
              padding: const EdgeInsets.all(Dim.allPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    article.title,
                    style: Font.h2DarkBold,
                  ),
                  Text(normalizeContent(article.content)),
                  if (getIt<AuthenticatedUser>().user.id == article.ownerId)
                    deletionInProgress
                        ? const SizedBox(
                            width: 15,
                            height: 15,
                            child: CircularProgressIndicator())
                        : IconButton(
                            onPressed: () => context
                                .read<DashboardCubit>()
                                .deleteArticle(article.id),
                            icon: const Icon(Icons.delete),
                            color: Colors.red,
                          )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
