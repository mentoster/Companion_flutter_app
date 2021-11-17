import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const borderColor = Color(0xff525252);

abstract class Themes {
  static final ThemeData dark = ThemeData.dark().copyWith(
      colorScheme: ColorScheme(
        primary: const Color(0xff0EE98D),
        primaryVariant: const Color(0xff34D178),
        secondary: const Color(0xff0EE98D),
        secondaryVariant: const Color(0xff34D178),
        surface: const Color(0xff2F3136),
        background: const Color(0xff202225),
        error: const Color(0xffd32f2f),
        onPrimary: const Color(0xff2F3136),
        onSecondary: const Color(0xffFFFFFF).withOpacity(0.87),
        onSurface: const Color(0xffFFFFFF).withOpacity(0.87),
        onBackground: const Color(0xffFFFFFF).withOpacity(0.87),
        onError: const Color(0xffDE3B2D),
        brightness: Brightness.dark,
      ),
      textTheme: TextTheme(
          bodyText1:
              TextStyle(color: const Color(0xffFFFFFF).withOpacity(0.87))),
      appBarTheme: const AppBarTheme(backgroundColor: Color(0xff2F3136)),
      scaffoldBackgroundColor: const Color(0xff202225),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xff2F3136)));
}
