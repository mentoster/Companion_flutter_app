import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:companion/app/ui/pages/community_page/widgets/post_widget.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favorite_controller.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 6, top: 13),
          child: BlurFilter(
            child: Text(
              "  Избранное  ",
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 13,
                  left: screenPadding,
                ),
                child: Text(
                  "Избранное",
                  style: pageTitle,
                ),
              ),
              const PostWidget(),
              const PostWidget(),
              const PostWidget(),
            ]),
      ])),
    ));
  }
}
