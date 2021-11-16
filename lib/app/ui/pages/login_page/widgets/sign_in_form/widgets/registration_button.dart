import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Ещё не с нами? ",
            style: textRegular14,
          ),
          Text(
            "Зарегистрироваться",
            style: textButtonText,
          ),
        ],
      ),
    );
  }
}
