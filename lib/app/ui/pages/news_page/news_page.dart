import 'dart:ui';

import 'package:companion/app/ui/pages/story_page/widgets/gradient_widget.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/news_controller.dart';
import 'widgets/blur_widget.dart';
import 'widgets/news_card_widget.dart';
import 'widgets/news_gradient_widget.dart';
import 'widgets/news_title_widget.dart';
import 'widgets/stories_feed_widget.dart';
import 'widgets/story_widget.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.4),
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
                ),
                const NewsCard(
                  imagePath: "assets/images/dummy_images/news/spirit_new.png",
                  date: "Пон.,17 октября • 15 мин.",
                  title:
                      "Российская команда Team Spirit выиграла чемпионат мира по Dota 2",
                  prewiewText:
                      "Россияне из Team Spirit стали чемпионами The International 2021 по Dota 2. Заключительный матч с китайцами из PSG.LGD закончился со счётом 3:2. Это третий финал TI в истории, который завершился с ...",
                ),
                const NewsCard(
                  imagePath: "assets/images/dummy_images/games/portal2.jpeg",
                  date: "Пон.,18 октября",
                  title: "Вышел новый мод на Portal 2",
                  prewiewText:
                      "Главная особенность Reloaded — третий портал, перемещающий вас между двумя временными линиями. Свежие головоломки активно задействуют эту особенность: например, если вы расставляете порталы в прошлом, они появляются на тех же местах и в будущем...",
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
