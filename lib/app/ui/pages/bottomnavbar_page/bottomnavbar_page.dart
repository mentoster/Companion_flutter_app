import 'package:companion/app/ui/pages/avengers_page/avengers_page.dart';
import 'package:companion/app/ui/pages/community_page/community_page.dart';
import 'package:companion/app/ui/pages/favorite_page/favorite_page.dart';
import 'package:companion/app/ui/pages/news_page/news_page.dart';
import 'package:companion/app/ui/pages/profile_page/profile_page.dart';
import 'package:companion/app/ui/theme/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/bottomnavbar_controller.dart';

class BottomnavbarPage extends StatelessWidget {
  const BottomnavbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomnavbarController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: const [
              NewsPage(),
              AvengersPage(),
              CommunityPage(),
              FavoritePage(),
              ProfilePage(),
            ],
          ),
          extendBody: true,
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Theme.of(context).iconTheme.color!.withOpacity(1),
                    blurRadius: 1,
                    offset: const Offset(0.0, 0))
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                topLeft: Radius.circular(24),
              ),
              child: BottomNavigationBar(
                onTap: controller.changeTabIndex,
                currentIndex: controller.tabIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                type: BottomNavigationBarType.fixed,
                backgroundColor: Theme.of(context).colorScheme.surface,
                unselectedItemColor:
                    Theme.of(context).iconTheme.color!.withOpacity(1),
                elevation: 0,
                items: [
                  _bottomNavigationBarItem(
                    icon: CompanionIcons.news,
                    label: '????????????',
                  ),
                  _bottomNavigationBarItem(
                    icon: Icons.search,
                    label: '????????????????',
                  ),
                  _bottomNavigationBarItem(
                    icon: Icons.messenger_outline,
                    label: 'Gameunity',
                  ),
                  _bottomNavigationBarItem(
                    icon: Icons.bookmark_outline,
                    label: '??????????????????',
                  ),
                  _bottomNavigationBarItem(
                    icon: CompanionIcons.iconArtworkprofile,
                    label: '??????????????',
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
