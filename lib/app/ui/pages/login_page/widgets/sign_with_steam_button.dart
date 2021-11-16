import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class SignWithSteamButton extends StatelessWidget {
  const SignWithSteamButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ))),
        onPressed: () => {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 19,
              height: 19,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Image.asset("assets/logo/steam_logo.jpeg"),
            ),
            const SizedBox(width: 4),
            Text(
              'Войти через Steam',
              style: outlinedButtonText,
            ),
          ],
        ));
  }
}
