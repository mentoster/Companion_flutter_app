import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/avenger_card.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).colorScheme.surface),
                padding: const EdgeInsets.symmetric(horizontal: screenPadding),
                child: Container(
                    width: double.infinity,
                    height: 57,
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(6),
                          ),
                          color: Theme.of(context).colorScheme.background,
                          border: Border.all(color: const Color(0xff525252))),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          InkWell(
                              onTap: () => Get.back(),
                              child: const Icon(Icons.chevron_left)),
                          const Text("Team Fortress 2")
                        ],
                      ),
                    ))),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6, top: 13),
                  child: BlurFilter(
                    child: Text(
                      "  Avengers  ",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Oxanium",
                        fontWeight: FontWeight.w700,
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.4),
                      ),
                    ),
                    sigmaX: 8.0,
                    sigmaY: 8.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: screenPadding),
                  child: RichText(
                    text: TextSpan(
                      text: "Avengers ",
                      style: pageTitle,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'online',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: "Oxanium",
                              fontWeight: FontWeight.w700,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: screenPadding),
              child: Column(
                children: [
                  AvengerCard(
                    imagePath: "assets/images/dummy_images/avatars/ava1.jpeg",
                    nickname: "Fanal",
                    hours: "27 357 ч.",
                    kills: "4.56 у/с",
                  ),
                  AvengerCard(
                    imagePath: "assets/images/dummy_images/avatars/ava3.jpeg",
                    nickname: "Fanal",
                    hours: "14 954 ч.",
                    kills: "3.21 у/с",
                  ),
                  AvengerCard(
                    imagePath: "assets/images/dummy_images/avatars/ava5.jpeg",
                    nickname: "Fanal",
                    hours: "7 353 ч.",
                    kills: "2.01 у/с",
                  ),
                  AvengerCard(
                    imagePath: "assets/images/dummy_images/avatars/ava7.jpeg",
                    nickname: "Fanal",
                    hours: "2 114 ч.",
                    kills: "1.14 у/с",
                  ),
                  AvengerCard(
                    imagePath: "assets/images/dummy_images/avatars/ava8.png",
                    nickname: "Mentoster",
                    hours: "700 ч.",
                    kills: "1.16 у/с",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
