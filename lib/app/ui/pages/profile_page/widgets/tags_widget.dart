import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

import 'chip_tag_widget.dart';

class TagsWidget extends StatelessWidget {
  const TagsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Теги",
              style: h5RegularPrimaryColor,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: const [
                ChipTagWidget(name: "Активный"),
                ChipTagWidget(name: "Точный"),
                ChipTagWidget(name: "Инженер tf2"),
              ],
            ),
            const ChipTagWidget(name: "Спокойный"),
          ],
        ),
      ),
    );
  }
}
