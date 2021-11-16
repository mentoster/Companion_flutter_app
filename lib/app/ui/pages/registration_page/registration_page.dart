import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/registration_controller.dart';
import 'widgets/registration_form/registration_form.dart';

class RegistrationPage extends GetView<RegistrationController> {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(screenPadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logo/app_logo.png",
              width: size.width / 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Мы рады новым бойцам в наших рядах!",
                textAlign: TextAlign.center,
                softWrap: true,
                style: h3Regular,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: Text(
                "Шаг 1 из 2",
                textAlign: TextAlign.center,
                softWrap: true,
                style: h5Regular,
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: defaultPadding,
                      left: defaultPadding * 2,
                      right: defaultPadding * 2),
                  child: RegistrationForm(),
                )),
          ],
        ),
      ),
    ));
  }
}
