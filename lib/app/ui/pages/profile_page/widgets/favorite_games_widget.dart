import 'package:companion/app/ui/pages/avengers_page/widgets/game_card_widget.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

class FavoriteGamesWidget extends StatelessWidget {
  const FavoriteGamesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Любимые игры",
              style: h5RegularPrimaryColor,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                crossAxisSpacing: defaultPadding,
                mainAxisSpacing: defaultPadding,
                childAspectRatio: 83 / 130,
                crossAxisCount: 3,
                children: const <Widget>[
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/tf2.jpeg",
                    title: "Team Fortress 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/dota.jpeg",
                    title: "Dota 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/csgo.jpeg",
                    title: "CS:GO",
                  ),
                  GameCardWidget(
                    imagePath:
                        "assets/images/dummy_images/games/rockerleague.jpeg",
                    title: "Rocket league",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/tf2.jpeg",
                    title: "Team Fortress 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/dota.jpeg",
                    title: "Dota 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/csgo.jpeg",
                    title: "CS:GO",
                  ),
                  GameCardWidget(
                    imagePath:
                        "assets/images/dummy_images/games/rockerleague.jpeg",
                    title: "Rocket league",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/tf2.jpeg",
                    title: "Team Fortress 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/dota.jpeg",
                    title: "Dota 2",
                  ),
                  GameCardWidget(
                    imagePath: "assets/images/dummy_images/games/csgo.jpeg",
                    title: "CS:GO",
                  ),
                  GameCardWidget(
                    imagePath:
                        "assets/images/dummy_images/games/rockerleague.jpeg",
                    title: "Rocket league",
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
