import 'package:companion/app/controllers/root_controller.dart';
import 'package:companion/app/routes/app_pages.dart';
import 'package:companion/app/ui/global_widgets.dart/primary_button.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:material_tag_editor/tag_editor.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

import 'widgets/chip.dart';
import 'widgets/genre_box.dart';

class ChooseGenreForm extends StatefulWidget {
  const ChooseGenreForm({Key? key}) : super(key: key);

  @override
  _ChooseGenreFormState createState() => _ChooseGenreFormState();
}

class _ChooseGenreFormState extends State<ChooseGenreForm> {
  List<String> _values = [];
  final RootController _rootController = Get.find();
  final tagColor = const Color(0xff333333);
  final List<GenreBox> genreBoxes = [
    const GenreBox("Стратегия",
        boxColor: Color(0xffb2e9aa), path: "assets/images/genre/strategy.png"),
    const GenreBox("Ролевая",
        boxColor: Color(0xffE9D4AA),
        path: "assets/images/genre/role-playing.png"),
    const GenreBox("Головоломка",
        boxColor: Color(0xffAFAAE9), path: "assets/images/genre/puzzle.png"),
    const GenreBox("Экшн",
        boxColor: Color(0xffAADAE9), path: "assets/images/genre/action.png"),
    const GenreBox("Приключение",
        boxColor: Color(0xffE9AAAA), path: "assets/images/genre/adventure.png"),
    const GenreBox("Симулятор",
        boxColor: Color(0xffAAE9E1), path: "assets/images/genre/simulator.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          "Как бы вы себя описали?",
          style: h4Medium,
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          "Впишите теги, которые вам подходят",
          style: textRegular14,
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Theme.of(context).colorScheme.background,
              width: 1,
            ),
            color: Theme.of(context).colorScheme.background,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            child: TagEditor(
              length: _values.length,
              delimiters: [',', ' '],
              hasAddButton: true,
              inputDecoration: const InputDecoration(
                border: InputBorder.none,
              ),
              onTagChanged: (newValue) {
                setState(() {
                  _values.add(newValue);
                });
              },
              tagBuilder: (context, index) => ChipTag(
                index: index,
                label: _values[index],
                onDeleted: (index) {
                  print("deleted $index");
                  setState(() {
                    _values.removeAt(index);
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          "Какие жанры игр вам нравятся?",
          style: h4Medium,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 325,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.background,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: GridView.count(
                padding: const EdgeInsets.all(0),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 2,
                children: List.generate(genreBoxes.length, (i) {
                  return genreBoxes[i];
                })),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        PrimaryButton("Продолжить", onPressed: () {
          _rootController.registred.value = true;
          Get.offAllNamed(Routes.INITIAL);
        })
      ],
    );
  }
}
