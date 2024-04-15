import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/dashboard/application/cubit/dashboard_cubit.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:articles_app_flutter/domain/authenticated_user.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(Dim.screenPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.person),
                  const SizedBox(width: 4),
                  Text(getIt<AuthenticatedUser>().user.username,
                      style: Font.h2DarkBold),
                ],
              ),
              Button(
                text: T.addArticle,
                fullWidth: true,
                onPressed: () => context.pushRoute(const AddArticleRoute()),
              ),
              Button(
                text: T.logout,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                fullWidth: true,
                onPressed: () => context.read<DashboardCubit>().logout(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
