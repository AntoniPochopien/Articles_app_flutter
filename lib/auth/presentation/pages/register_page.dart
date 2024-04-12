import 'package:articles_app_flutter/auth/application/cubit/auth_cubit.dart';
import 'package:articles_app_flutter/common/widgets/articles_input.dart';
import 'package:articles_app_flutter/common/widgets/button.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  final Function onModeChange;
  const RegisterPage({super.key, required this.onModeChange});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _usernameController = TextEditingController();
  final _pwdController = TextEditingController();
  final _repeatPwdController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) => Form(
            key: _formKey,
            child: Column(
              children: [
                ArticlesInput(
                  controller: _usernameController,
                  hint: T.login,
                  onChanged: (v) {
                    if (v.length >= 4) {
                      context.read<AuthCubit>().checkUsername(v);
                    }
                  },
                  validator: (v) {
                    if (v.isEmpty) {
                      return T.loginCannotBeEmpty;
                    } else if (v.length < 4) {
                      return T.loginIsTooShort;
                    } else {
                      return state.whenOrNull(
                          error: (value) => value.whenOrNull(
                              notUnique: () => T.theLoginIsAlreadyTaken));
                    }
                  },
                ),
                ArticlesInput(
                  controller: _pwdController,
                  hint: T.password,
                  isPassword: true,
                  validator: (v) {
                    if (v.isEmpty) {
                      return T.passwordCannotBeEmpty;
                    } else if (v.length < 6) {
                      return T.passwordIsTooShort;
                    }
                    return null;
                  },
                ),
                ArticlesInput(
                  controller: _repeatPwdController,
                  hint: T.repeatPassword,
                  isPassword: true,
                  validator: (v) {
                    if (v != _pwdController.text) {
                      return T.passwordsMustBeTheSame;
                    }
                    return null;
                  },
                ),
                Button(
                    text: T.register,
                    onPressed: () => state.maybeWhen(
                          orElse: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<AuthCubit>().register(
                                  username: _usernameController.text,
                                  password: _pwdController.text);
                            }
                            return null;
                          },
                          loading: () => null,
                        )),
                TextButton(
                  child: Text(T.login),
                  onPressed: () => widget.onModeChange(),
                )
              ],
            ),
          ));
}
