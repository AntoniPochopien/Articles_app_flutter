import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;

  const Button({
    super.key,
    required this.text,
    this.isLoading = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            height: 15, width: 15, child: CircularProgressIndicator())
        : Text(text);
    return ElevatedButton(
        onPressed: isLoading ? null : onPressed, child: child);
  }
}
