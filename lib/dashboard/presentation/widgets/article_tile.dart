import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/tile_images_view.dart';
import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  final Article article;
  const ArticleTile({super.key, required this.article});
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    article.title,
                    style: Font.h2DarkBold,
                  ),
                  Text(normalizeContent(article.content))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
