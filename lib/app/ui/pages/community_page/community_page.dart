import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:companion/app/ui/pages/newpost_page/newpost_page.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_icons.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/community_controller.dart';
import 'widgets/community_card_button.dart';
import 'widgets/post_widget.dart';

class CommunityPage extends GetView<CommunityController> {
  const CommunityPage({Key? key}) : super(key: key);

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
                  "  GameUnity  ",
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
                Padding(
                  padding: const EdgeInsets.only(
                    top: screenPadding,
                    left: screenPadding,
                  ),
                  child: Text(
                    "Gameunity",
                    style: pageTitle,
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CommunityCardButton(
                      title: "?????? ??????????????",
                      icon: CompanionIcons.iconArtworkprofile,
                    ),
                    const SizedBox(
                      width: defaultPadding,
                    ),
                    InkWell(
                      onTap: () => Get.to(NewpostPage()),
                      child: const CommunityCardButton(
                        title: "?????????? ????????",
                        icon: CompanionIcons.pencilPlus,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: defaultPadding),
                  child: Divider(
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
                const PostWidget(),
                const PostWidget(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
