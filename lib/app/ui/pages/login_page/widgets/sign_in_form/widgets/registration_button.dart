import 'package:companion/app/routes/app_pages.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationButton extends StatelessWidget {
  const RegistrationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.toNamed(Routes.REGISTRATION),
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
