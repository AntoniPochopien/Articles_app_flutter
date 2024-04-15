import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/articles_list.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/dashboard_drawer.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit()..fetchData(),
      child: BlocConsumer<DashboardCubit, DashboardState>(
        listener: (context, state) {
          state.mapOrNull(
            logout: (value) {
              context.router.replaceAll([const AuthRoute()]);
            },
          );
        },
        builder: (context, state) => ArticlesScaffold(
          appBar: const ArticlesAppBar(),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.pushRoute(const AddArticleRoute()),
          ),
          endDrawer: const DashboardDrawer(),
          body: state.maybeMap(
              orElse: () => const Center(child: CircularProgressIndicator()),
              error: (value) => Center(
                    child: Button(
                        text: T.retry,
                        onPressed: () =>
                            context.read<DashboardCubit>().fetchData()),
                  ),
              data: (value) => ArticlesList(
                    actualPage: value.actualPage,
                    articles: value.articles,
                    morePagesLoading: value.morePagesLoading,
                  )),
        ),
      ),
    );
  }
}
