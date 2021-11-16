import 'package:companion/app/ui/theme/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:companion/app/ui/pages/home_page/home_page.dart';
import 'package:companion/app/ui/pages/info_page/info_page.dart';
import 'package:companion/app/ui/pages/login_page/login_page.dart';
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
              HomePage(),
              LoginPage(),
              InfoPage(),
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
                icon: CompanionIcons.bookmarkbookmark,
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
