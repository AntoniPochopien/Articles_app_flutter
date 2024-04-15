import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final bool isLoading;
  final bool fullWidth;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const Button(
      {super.key,
      required this.text,
      this.isLoading = false,
      this.fullWidth = false,
      this.onPressed,
      this.backgroundColor,
      this.foregroundColor});

  @override
  Widget build(BuildContext context) {
    final child = isLoading
        ? const SizedBox(
            height: 15, width: 15, child: CircularProgressIndicator())
        : Text(text);
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor, foregroundColor: foregroundColor),
        onPressed: isLoading ? null : onPressed,
        child: fullWidth ? Center(child: child) : child);
  }
}
