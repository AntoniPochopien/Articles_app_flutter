import 'package:articles_app_flutter/common/constants/font.dart';
import 'package:articles_app_flutter/common/widgets/dialog_background.dart';
import 'package:articles_app_flutter/l10n/l10n.dart';
import 'package:flutter/material.dart';

class RegisterSuccessDialog extends StatelessWidget {
  const RegisterSuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogBackground(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          T.registeredSuccessfully,
          style: Font.h2DarkBold,
        ),
        Text(
          T.nowLogIn,
          style: Font.h5Dark,
        ),
      ],
    ));
  }
}
