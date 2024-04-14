import 'package:articles_app_flutter/add_article/application/cubit/add_article_cubit.dart';
import 'package:articles_app_flutter/add_article/presentation/pages/article_content_page.dart';
import 'package:articles_app_flutter/add_article/presentation/pages/article_images_page.dart';
import 'package:articles_app_flutter/add_article/presentation/widgets/article_switch.dart';
import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/constants/dur.dart';
import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_input.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/common/widgets/dialog_background.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddArticleScreen extends StatefulWidget {
  const AddArticleScreen({super.key});

  @override
  State<AddArticleScreen> createState() => _AddArticleScreenState();
}

class _AddArticleScreenState extends State<AddArticleScreen> {
  final _pageController = PageController();

  void _animateToPage(int page) => _pageController.animateToPage(page,
      duration: Dur.animationDuration, curve: Curves.easeIn);

  VoidCallback? onPublish(BuildContext context, AddArticleState state) {
    if (state.isLoading || state.title.isEmpty || state.content.isEmpty) {
      return null;
    } else {
      return () => context.read<AddArticleCubit>().publishArticle();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddArticleCubit(),
      child: BlocConsumer<AddArticleCubit, AddArticleState>(
        listener: (context, state) {
          if (state.successfulyPublished) {
            showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => DialogBackground(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          T.successfullyPublished,
                          style: Font.h2DarkBold,
                        ),
                        Text(
                          T.yourArticleIsNowVisible,
                          style: Font.h5Dark,
                        ),
                        Button(
                            text: T.ok,
                            onPressed: () => context.router.popUntil((route) =>
                                route.settings.name == DashboardRoute.name))
                      ],
                    )));
          }
        },
        builder: (context, state) => ArticlesScaffold(
          appBar: ArticlesAppBar(
            title: T.addArticle,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: Dim.screenPadding),
                child: Button(
                  text: T.publish,
                  isLoading: state.isLoading,
                  onPressed: onPublish(context, state),
                ),
              ),
            ],
          ),
          floatingActionButton: ArticleSwitch(
            value: true,
            onChanged: (v) {
              if (v) {
                _animateToPage(0);
              } else {
                _animateToPage(1);
              }
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: Column(
            children: [
              ArticlesInput(
                hint: T.titleOfTheArticle,
                onChanged: (v) =>
                    context.read<AddArticleCubit>().updateTitle(v),
              ),
              Expanded(
                child: PageView(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ArticleContentPage(),
                      ArticleImagesPage(),
                    ]),
              ),
              const SizedBox(height: kToolbarHeight)
            ],
          ),
        ),
      ),
    );
  }
}
