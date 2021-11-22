import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

class GameCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  const GameCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.asset(
            imagePath,
            width: 83,
            height: 118,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        SizedBox(
          width: 83,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: textRegular14,
          ),
        ),
      ],
    );
  }
}
