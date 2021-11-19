import 'package:companion/app/routes/app_pages.dart';
import 'package:companion/app/ui/global_widgets.dart/primary_button.dart';
import 'package:companion/app/ui/pages/login_page/widgets/sign_in_form/widgets/forget_password_button.dart';
import 'package:companion/app/ui/pages/login_page/widgets/sign_with_steam_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';

import 'package:companion/app/controllers/login_controller.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:companion/app/ui/theme/app_theme.dart';

import '../../../../global_widgets.dart/text_with_link.dart';

class RegistrationForm extends StatefulWidget {
  final log = Logger('SignInForm');
  final LoginController _controller = Get.find();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
      filled: true,
      isDense: true,
      fillColor: Themes.dark.colorScheme.background,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: const BorderSide(color: borderColor, width: 1.0)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: const BorderSide(color: borderColor, width: 1),
      ),
      labelStyle: const TextStyle(color: borderColor),
    );

    return Form(
      key: widget._key,
      autovalidateMode:
          _autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              "Ваш ник",
              style: textRegular18,
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 36,
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: inputDecoration,
                controller: widget._emailController,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required.';
                  }
                  if (!value.isEmail) {
                    return 'Not email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "Почта",
              style: textRegular18,
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 36,
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: inputDecoration,
                controller: widget._emailController,
                autocorrect: false,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required.';
                  }
                  if (!value.isEmail) {
                    return 'Not email';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "Пароль",
              style: textRegular18,
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 36,
              child: TextFormField(
                decoration: inputDecoration,
                obscureText: true,
                controller: widget._passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required.';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "Повторите Пароль",
              style: textRegular18,
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 36,
              child: TextFormField(
                decoration: inputDecoration,
                obscureText: true,
                controller: widget._passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required.';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            PrimaryButton('Зарегистрироваться',
                onPressed: () => Get.offAllNamed(Routes.GENRE)),
            const SizedBox(height: defaultPadding / 2),
            const SignWithSteamButton(),
            TextWithLinkButton(
              "Есть профиль?",
              link: "Назад",
              onPressed: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }

  _onLoginButtonPressed() {
    if (widget._key.currentState!.validate()) {
      widget._controller.saveLogin(
          widget._emailController.text, widget._passwordController.text);
    } else {
      setState(() {
        _autoValidate = true;
      });
    }
  }
}
