import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:companion/app/controllers/login_controller.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:get/get.dart';
import 'package:logging/logging.dart';

class SignInForm extends StatefulWidget {
  final log = Logger('SignInForm');
  final LoginController _controller = Get.find();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool _autoValidate = false;
  @override
  Widget build(BuildContext context) {
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
              "Почта",
              style: textRegular14,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'email@email.ru',
                  filled: true,
                  isDense: true,
                  fillColor: Theme.of(context).colorScheme.background),
              controller: widget._emailController,
              keyboardType: TextInputType.emailAddress,
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
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              "Пароль",
              style: textRegular14,
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'password',
                  filled: true,
                  isDense: true,
                  fillColor: Theme.of(context).colorScheme.background),
              obscureText: true,
              controller: widget._passwordController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Password is required.';
                }
                return null;
              },
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Center(
              child: Text(
                "Забыли пароль?",
                style: textRegular14,
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            ElevatedButton(
                onPressed: _onLoginButtonPressed, child: Text('Войти')),
            const SizedBox(
              height: defaultPadding,
            ),
            OutlinedButton(
                onPressed: () => {}, child: Text('Войти через Steam')),
            const SizedBox(
              height: defaultPadding,
            ),
            Center(
              child: Text(
                "Еще не с нами? Зарегистрироваться",
                style: textRegular14,
              ),
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
