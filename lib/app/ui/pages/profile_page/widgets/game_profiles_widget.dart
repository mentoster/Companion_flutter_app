import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

import 'game_profile_link_widget.dart';

class GameProfilesWidget extends StatelessWidget {
  const GameProfilesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        GameProfileLinkWidget(
          imagePath: "assets/logo/discord_logo.png",
          title: "Дмитрий Макаров#0542",
        ),
        SizedBox(
          width: defaultPadding,
        ),
        GameProfileLinkWidget(
          imagePath: "assets/logo/steam_logo.jpeg",
          title: "Mentoster\n",
        ),
      ],
    );
  }
}
