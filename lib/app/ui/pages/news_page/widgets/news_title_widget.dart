import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class NewsTitleWidget extends StatelessWidget {
  const NewsTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: RichText(
        text: TextSpan(
          text: "Ваша ",
          style: pageTitle,
          children: <TextSpan>[
            TextSpan(
                text: 'лента',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Oxanium",
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).textTheme.bodyText1!.color,
                )),
          ],
        ),
      ),
    );
  }
}
