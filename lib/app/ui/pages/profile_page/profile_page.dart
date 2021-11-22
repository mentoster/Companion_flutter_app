import 'package:companion/app/ui/pages/avengers_page/widgets/game_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:companion/app/ui/pages/choosegenre_page/genre_form/widgets/chip.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

import '../../../controllers/profile_controller.dart';
import 'widgets/game_profile_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          const MainInfoWidget(),
          const SizedBox(
            height: defaultPadding,
          ),
          const GameProfilesWidget(),
          const SizedBox(
            height: defaultPadding,
          ),
          const TagsWidget(),
          const SizedBox(
            height: defaultPadding,
          ),
          Container(
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
                          imagePath:
                              "assets/images/dummy_images/games/tf2.jpeg",
                          title: "Team Fortress 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/dota.jpeg",
                          title: "Dota 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/csgo.jpeg",
                          title: "CS:GO",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/rockerleague.jpeg",
                          title: "Rocket league",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/tf2.jpeg",
                          title: "Team Fortress 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/dota.jpeg",
                          title: "Dota 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/csgo.jpeg",
                          title: "CS:GO",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/rockerleague.jpeg",
                          title: "Rocket league",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/tf2.jpeg",
                          title: "Team Fortress 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/dota.jpeg",
                          title: "Dota 2",
                        ),
                        GameCardWidget(
                          imagePath:
                              "assets/images/dummy_images/games/csgo.jpeg",
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
          )
        ],
      ),
    )));
  }
}

class TagsWidget extends StatelessWidget {
  const TagsWidget({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Теги",
              style: h5RegularPrimaryColor,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: const [
                ChipTagWidget(name: "Активный"),
                ChipTagWidget(name: "Точный"),
                ChipTagWidget(name: "Инженер tf2"),
              ],
            ),
            const ChipTagWidget(name: "Спокойный"),
          ],
        ),
      ),
    );
  }
}

class ChipTagWidget extends StatelessWidget {
  final String name;
  const ChipTagWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 6),
      child: Chip(
        labelPadding: const EdgeInsets.only(left: 8.0, right: 8.0),
        backgroundColor: const Color(0xff666666),
        label: Text(name),
      ),
    );
  }
}

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 283,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Center(
            child: CircleAvatar(
              maxRadius: 90,
              backgroundImage:
                  AssetImage("assets/images/dummy_images/avatars/ava8.png"),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          NickNameWidget(),
        ],
      ),
    );
  }
}

class NickNameWidget extends StatelessWidget {
  const NickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      BlurFilter(
        child: Text(
          "  Mentoster  ",
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
      Text(
        "  Mentoster  ",
        style: TextStyle(
          fontSize: 40,
          fontFamily: "Oxanium",
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ]));
  }
}

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
