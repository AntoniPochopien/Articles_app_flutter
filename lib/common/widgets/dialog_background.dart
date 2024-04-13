import 'package:articles_app_flutter/common/constants/dim.dart';
import 'package:flutter/material.dart';

class DialogBackground extends StatelessWidget {
  final Widget child;
  const DialogBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dim.radius)),
      child: Padding(
        padding: const EdgeInsets.all(Dim.screenPadding),
        child: child,
      ),
    );
  }
}
