import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_text_theme.dart';

class TextWithLinkButton extends StatelessWidget {
  final String text;
  final String link;
  final Function() onPressed;
  const TextWithLinkButton(this.text,
      {Key? key, required this.link, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text + " ",
            style: textRegular14,
          ),
          Text(
            link,
            style: textButtonText,
          ),
        ],
      ),
    );
  }
}
