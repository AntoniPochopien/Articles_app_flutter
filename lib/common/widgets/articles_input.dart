import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class ArticlesInput extends StatelessWidget {
  final bool isPassword;
  final TextEditingController? controller;
  final String? hint;
  final Function(String)? onChanged;
  final String? Function(String)? validator;

  const ArticlesInput({
    super.key,
    this.isPassword = false,
    this.hint,
    this.onChanged,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dim.verticalPadding),
      child: TextFormField(
          controller: controller,
          onChanged: onChanged,
          obscureText: isPassword,
          validator: (v) {
            if (validator != null) {
              return validator!(v ?? '');
            }
            return null;
          },
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiary, width: 2),
            ),
          )),
    );
  }
}
