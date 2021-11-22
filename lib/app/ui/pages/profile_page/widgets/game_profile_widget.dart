import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

class GameProfileLinkWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  const GameProfileLinkWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 182,
        height: 182,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Image.asset(imagePath,
                    width: 83, height: 83, fit: BoxFit.cover)),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: textMedium16pxPrimaryColor,
            ),
          ],
        ));
  }
}
