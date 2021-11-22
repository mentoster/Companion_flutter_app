import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

class BigGameCardWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  const BigGameCardWidget({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            child: Image.asset(
              imagePath,
              width: 133,
              height: 187,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          SizedBox(
            width: 133,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textRegular16,
            ),
          ),
        ],
      ),
    );
  }
}
