import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
        ),
        padding: const EdgeInsets.symmetric(vertical: defaultPadding),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: screenPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        // maxRadius: 40,
                        backgroundImage: AssetImage(
                            "assets/images/dummy_images/avatars/ava9.png"),
                      ),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ЯНУР",
                            style: textRegular16,
                          ),
                          Text(
                            "Пон.,17 октября • 15 мин.",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white.withOpacity(0.50)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  const Text("Секреты и фишки DotA 2",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontFamily: "Oxanium")),
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    "Я буду дополнять это руководство по мере того как буду вспоминать все новые и новые фишки доты.Что бы получить максимум эффективности от лечения здоровья\маны, нужно перед лечением выложить предметы которые увеличивают здоровье\ману. Или же переключить характеристику Power Treads на ловкость. Главное делать это под вышкой или в укромном месте, и желательно делать это быстро.Довольно легко можно избежать смерти от ульты Зевса или Снайпера если вы уже ...",
                    style: textRegular14,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
              child: Divider(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: screenPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.favorite_border),
                      const SizedBox(
                        width: defaultPadding / 3,
                      ),
                      Text(
                        "14 нравится",
                        style: textRegular14Post,
                      ),
                      const SizedBox(
                        width: defaultPadding / 2,
                      ),
                      const Icon(Icons.comment_outlined),
                      const SizedBox(width: defaultPadding / 3),
                      Text("3 комментария", style: textRegular14Post),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(Icons.bookmark_outline),
                      SizedBox(
                        width: defaultPadding / 2,
                      ),
                      Icon(Icons.share),
                    ],
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
