import 'package:articles_app_flutter/auth/application/cubit/auth_cubit.dart';
import 'package:articles_app_flutter/auth/domain/i_auth_repository.dart';
import 'package:articles_app_flutter/auth/presentation/pages/login_page.dart';
import 'package:articles_app_flutter/auth/presentation/pages/register_page.dart';
import 'package:articles_app_flutter/common/constants/dur.dart';
import 'package:articles_app_flutter/common/widgets/articles_scaffold.dart';
import 'package:articles_app_flutter/di.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isLogin = true;

  void _changeMode(AuthState state) {
    state.mapOrNull(
      loading: (_) {
        return;
      },
    );
    setState(() => _isLogin = !_isLogin);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(getIt<IAuthRepository>()),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) => ArticlesScaffold(
            body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: Dur.animationDuration),
                  child: _isLogin
                      ? LoginPage(onModeChange: () => _changeMode(state))
                      : RegisterPage(onModeChange: () => _changeMode(state)),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}
