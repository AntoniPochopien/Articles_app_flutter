import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/article_tile.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit()..fetchData(),
      child: BlocBuilder<DashboardCubit, DashboardState>(
        builder: (context, state) => ArticlesScaffold(
          appBar: const ArticlesAppBar(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.pushRoute(const AddArticleRoute()),
          ),
          body: state.maybeMap(
            orElse: () => const Center(child: CircularProgressIndicator()),
            error: (value) => Center(
              child: Button(
                  text: 'Retry',
                  onPressed: () => context.read<DashboardCubit>().fetchData()),
            ),
            data: (value) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dim.screenPadding),
              child: RefreshIndicator(
                onRefresh: () async =>
                    context.read<DashboardCubit>().fetchData(),
                child: ListView.builder(
                  itemCount: value.articles.length,
                  itemBuilder: (context, index) =>
                      ArticleTile(article: value.articles[index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
