import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:companion/app/ui/pages/search_input_page/search_input_page.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/avengers_controller.dart';
import 'widgets/big_game_card_widget.dart';
import 'widgets/game_card_widget.dart';

class AvengersPage extends GetView<AvengersController> {
  const AvengersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
                child: Stack(children: [
      Padding(
        padding: const EdgeInsets.only(left: 6, top: screenPadding),
        child: BlurFilter(
          child: Text(
            "  Avengers  ",
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
        padding: const EdgeInsets.symmetric(horizontal: screenPadding),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: screenPadding,
                ),
                child: Text(
                  "Avengers",
                  style: pageTitle,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              InkWell(
                onTap: () => Get.to(() =>  SearchInputPage(),
                    transition: Transition.noTransition),
                child: Container(
                  height: 36,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xff525252),
                        width: 1.0,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(8))),
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Row(
                    children: const [
                      Icon(Icons.search),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Найти игру...",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff525252)),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Center(
                child: Text(
                  "Кто-то вас буллит  в игре?\nМстистели исправят эту ситуацию!",
                  textAlign: TextAlign.center,
                  style: h4Medium,
                ),
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                "Ваши игры",
                style: h5RegularPrimaryColor,
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                children: const [
                  BigGameCardWidget(
                    imagePath: "assets/images/dummy_images/games/tf2.jpeg",
                    title: "Team fortress 2",
                  ),
                  BigGameCardWidget(
                    imagePath: "assets/images/dummy_images/games/dota.jpeg",
                    title: "Dota 2",
                  ),
                ],
              ),
              const SizedBox(
                height: defaultPadding,
              ),
              Text(
                "Возможно вам подойдут",
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
                  childAspectRatio: 83 / 180,
                  crossAxisCount: 4,
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
            ]),
      )
    ]))));
  }
}
