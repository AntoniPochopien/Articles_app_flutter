import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/dashboard/domain/article.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/article_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesList extends StatefulWidget {
  final List<Article> articles;
  final int actualPage;
  final bool morePagesLoading;

  const ArticlesList(
      {super.key,
      required this.articles,
      required this.actualPage,
      required this.morePagesLoading});

  @override
  State<ArticlesList> createState() => _ArticlesListState();
}

class _ArticlesListState extends State<ArticlesList> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<DashboardCubit>().loadMoreArticles(widget.actualPage + 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
      child: Column(children: [
        Expanded(
          child: RefreshIndicator(
            onRefresh: () async => context.read<DashboardCubit>().fetchData(),
            child: ListView.builder(
              controller: _scrollController,
              itemCount: widget.articles.length,
              itemBuilder: (context, index) =>
                  ArticleTile(article: widget.articles[index]),
            ),
          ),
        ),
        if (widget.morePagesLoading) const CircularProgressIndicator()
      ]),
    );
  }
}
