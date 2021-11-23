import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:companion/app/ui/theme/app_theme.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logging/logging.dart';

const saveThemeCode = "isDarkTheme";

class AppThemeService extends GetxService {
  final getBox = GetStorage();
  final log = Logger('AppSettingService');

  Future<AppThemeService> init() async {
    setTheme(getThemeNow());
    return this;
  }

  void setTheme(bool? isDarkTheme) {
    Get.changeTheme(Themes.dark);
    getBox.write(saveThemeCode, true);
    changeStatusBarColor();
  }

  static bool? getThemeNow() {
    return GetStorage().read(saveThemeCode);
  }

  void changeStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Themes.dark.appBarTheme.backgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor:
            Themes.dark.bottomNavigationBarTheme.backgroundColor,
        systemNavigationBarDividerColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark));
  }
}
