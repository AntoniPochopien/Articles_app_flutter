import 'package:articles_app_flutter/auth/application/cubit/auth_cubit.dart';
import 'package:articles_app_flutter/common/widgets/articles_input.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  final Function onModeChange;
  const LoginPage({super.key, required this.onModeChange});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _pwdController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => Form(
        key: _formKey,
        child: Column(
          children: [
            ArticlesInput(
              controller: _usernameController,
              hint: T.login,
              validator: (v) {
                if (v.isEmpty) {
                  return T.loginCannotBeEmpty;
                }
                return null;
              },
            ),
            ArticlesInput(
              controller: _pwdController,
              hint: T.password,
              isPassword: true,
              validator: (v) {
                if (v.isEmpty) {
                  return T.passwordCannotBeEmpty;
                }
                return null;
              },
            ),
            Button(
                text: T.login,
                onPressed: () => state.maybeWhen(
                      orElse: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().login(
                              username: _usernameController.text,
                              password: _pwdController.text);
                        }
                        return null;
                      },
                      loading: () => null,
                    )),
            TextButton(
              child: Text(T.register),
              onPressed: () => widget.onModeChange(),
            )
          ],
        ),
      ),
    );
  }
}
