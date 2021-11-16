import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  const PrimaryButton(
    this.text, {
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: buttonText,
        ));
  }
}
