import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Text(
        "Забыли пароль?",
        style: textButtonText,
      ),
    );
  }
}
