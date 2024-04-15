import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/widgets/articles_appbar.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/dashboard/domain/filters.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/articles_list.dart';
import 'package:articles_app_flutter/dashboard/presentation/widgets/dashboard_drawer.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Filters filter = Filters.all;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit()..fetchData(filter),
      child: BlocConsumer<DashboardCubit, DashboardState>(
        listener: (context, state) {
          state.mapOrNull(
            logout: (value) {
              context.router.replaceAll([const AuthRoute()]);
            },
          );
        },
        builder: (context, state) => ArticlesScaffold(
          appBar: ArticlesAppBar(
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: Dim.screenPadding),
                child: PopupMenuButton(
                  child: const Icon(
                    Icons.filter_alt_outlined,
                  ),
                  itemBuilder: (BuildContext context) => Filters.values
                      .map((e) => PopupMenuItem(
                            value: e,
                            child: Text(e.getName),
                          ))
                      .toList(),
                  onSelected: (value) {
                    filter = value;
                    context.read<DashboardCubit>().fetchData(filter);
                  },
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.pushRoute(const AddArticleRoute()),
          ),
          drawer: const DashboardDrawer(),
          body: state.maybeMap(
              orElse: () => const Center(child: CircularProgressIndicator()),
              error: (value) => Center(
                    child: Button(
                        text: T.retry,
                        onPressed: () =>
                            context.read<DashboardCubit>().fetchData(filter)),
                  ),
              data: (value) => ArticlesList(
                    actualPage: value.actualPage,
                    articles: value.articles,
                    morePagesLoading: value.morePagesLoading,
                    deletingInProgressArticleIds:
                        value.deletingInProgressArticleIds,
                    filter: filter,
                  )),
        ),
      ),
    );
  }
}
