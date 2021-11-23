import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/choosegenre_controller.dart';
import 'genre_form/genre_form.dart';

class ChoosegenrePage extends GetView<ChoosegenreController> {
  const ChoosegenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(screenPadding),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: Text(
                "Шаг 2 из 2",
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: defaultPadding,
                    horizontal: defaultPadding * 2,
                  ),
                  child: ChooseGenreForm(),
                )),
          ],
        ),
      ),
    ));
  }
}
