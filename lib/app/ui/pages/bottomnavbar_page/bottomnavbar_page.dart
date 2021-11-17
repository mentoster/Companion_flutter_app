import 'package:companion/app/ui/pages/avengers_page/avengers_page.dart';
import 'package:companion/app/ui/pages/community_page/community_page.dart';
import 'package:companion/app/ui/pages/favorite_page/favorite_page.dart';
import 'package:companion/app/ui/pages/news_page/news_page.dart';
import 'package:companion/app/ui/theme/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:companion/app/ui/pages/info_page/info_page.dart';
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
            children: [
              NewsPage(),
              AvengersPage(),
              CommunityPage(),
              FavoritePage(),
              const ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: CompanionIcons.news,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.search,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.messenger_outline,
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: Icons.bookmark,
                label: 'News',
              ),
              _bottomNavigationBarItem(
                icon: CompanionIcons.icon_artworkprofile,
                label: 'Account',
              ),
            ],
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
