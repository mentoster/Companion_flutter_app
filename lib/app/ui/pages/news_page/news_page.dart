import 'dart:ui';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/news_controller.dart';
import 'widgets/blur_widget.dart';
import 'widgets/news_title_widget.dart';
import 'widgets/stories_feed_widget.dart';
import 'widgets/story_widget.dart';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: NewsTitleWidget(),
              ),
              StoriesFeedWidget(
                controller: controller,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenPadding, vertical: defaultPadding),
                child: Divider(),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
