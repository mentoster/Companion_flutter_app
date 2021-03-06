import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

class PostMoreInfoWidget extends StatelessWidget {
  const PostMoreInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 200,
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            color: Theme.of(context).colorScheme.surface,
          ),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 33,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text("Пон.,17 октября • 15 мин."),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                    "Российская команда Team Spirit выиграла чемпионат мира по Dota 2"),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                    "Россияне из Team Spirit стали чемпионами The International 2021 по Dota 2. Заключительный матч с китайцами из PSG.LGD закончился со счётом 3:2. Это третий финал TI в истории, который завершился с таким счётом.В групповой стадии у Team Spirit возникли проблемы. Состав проиграл два первых матча и оказался на последнем месте турнирной таблицы, однако смог победить в нескольких играх подряд и выйти в верхнюю сетку плей-офф. Итоговая статистика групповой стадии: 5 побед и 3 поражения."),
                const SizedBox(
                  height: defaultPadding,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  child:
                      Image.asset("assets/images/dummy_images/news/spirit.png"),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                const Text(
                    "В плей-офф Team Spirit проиграла первый же матч с Invictus Gaming со счётом 1:2 и упала в нижнюю сетку. После этого началось победоносное шествие россиян. Они выбили из турнира Fnatic (2:0), двукратных чемпионов мира OG (2:0), соотечественников из Virtus.pro (2:1), отомстили IG (2:0) и расправились с Team Secret (2:1).Team Spirit заработала \$ 18,2 млн призовых, что сделало её участников самыми богатыми игроками в Dota 2 в СНГ. На втором месте расположилась PSG.LGD с \$ 5,2 млн призовых, а на третьем — Team Secret c \$ 3,6 млн."),
              ],
            ),
          ),
        )
      ],
    );
  }
}
