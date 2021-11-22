import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:companion/app/ui/theme/app_constants.dart';

import '../../../controllers/profile_controller.dart';
import 'widgets/favorite_games_widget.dart';
import 'widgets/game_profiles_widget.dart';
import 'widgets/main_info_widget.dart';
import 'widgets/tags_widget.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(
        children: const [
          MainInfoWidget(),
          SizedBox(
            height: defaultPadding,
          ),
          GameProfilesWidget(),
          SizedBox(
            height: defaultPadding,
          ),
          TagsWidget(),
          SizedBox(
            height: defaultPadding,
          ),
          FavoriteGamesWidget()
        ],
      )),
    ));
  }
}
