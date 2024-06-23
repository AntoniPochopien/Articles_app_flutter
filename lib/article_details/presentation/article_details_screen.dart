import 'package:articles_app_flutter/common/constants/api.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class ArticleDetailsScreen extends StatefulWidget {
  final Article article;
  const ArticleDetailsScreen({super.key, required this.article});

  @override
  State<ArticleDetailsScreen> createState() => _ArticleDetailsScreenState();
}

class _ArticleDetailsScreenState extends State<ArticleDetailsScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ArticlesScaffold(
      appBar: ArticlesAppBar(
        title: widget.article.title,
      ),
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          if (widget.article.images.isNotEmpty)
            Stack(alignment: Alignment.bottomCenter, children: [
              PageView(
                controller: _pageController,
                children: widget.article.images
                    .map((e) => Image.network('${Api.url}/$e'))
                    .toList(),
              ),
              SmoothPageIndicator(
                controller: _pageController,
                count: widget.article.images.length,
                effect: const ScrollingDotsEffect(
                    dotHeight: Dim.dotSize, dotWidth: Dim.dotSize),
              ),
            ]),
          Text(
            widget.article.content,
            style: Font.h5Dark,
          ),
          Text.rich(
            TextSpan(children: [
              TextSpan(text: '${T.publishedBy} '),
              TextSpan(text: widget.article.owner.username, style: Font.h5DarkBold)
            ]),
            textAlign: TextAlign.end,
          ),
        ]),
      ),
    );
  }
}
