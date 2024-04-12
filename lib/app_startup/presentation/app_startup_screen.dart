import 'package:articles_app_flutter/app_startup/application/cubit/startup_cubit.dart';
import 'package:articles_app_flutter/navigation/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AppStartupScreen extends StatelessWidget {
  const AppStartupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => StartupCubit()..init(),
        child: BlocListener<StartupCubit, StartupState>(
          listenWhen: (previous, current) => true,
          listener: (context, state) {
            state.mapOrNull(
                authorized: (_) => context.replaceRoute(const DashboardRoute()),
                unauthorized: (_) => context.replaceRoute(const AuthRoute()));
          },
          child: const Scaffold(),
        ));
  }
}
