import 'dart:ui';

import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/news_controller.dart';
import 'widgets/blur_widget.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 6, top: 13),
            child: BlurFilter(
              child: Text(
                "  Ваша  ",
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Oxanium",
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
                ),
              ),
              sigmaX: 8.0,
              sigmaY: 8.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NewsTitle(),
                Container(
                  width: double.infinity,
                  child: Text("Story"),
                ),
                Divider()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class NewsTitle extends StatelessWidget {
  const NewsTitle({
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
