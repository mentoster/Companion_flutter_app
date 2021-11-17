import 'package:flutter/material.dart';

import 'app_theme.dart';

final TextStyle buttonText = TextStyle(
    fontSize: 16,
    color: Themes.dark.colorScheme.surface,
    fontWeight: FontWeight.w500);

final TextStyle outlinedButtonText = TextStyle(
  fontSize: 16,
  color: Themes.dark.textTheme.bodyText1!.color,
);

final TextStyle textButtonText = TextStyle(
  fontSize: 14,
  color: Themes.dark.colorScheme.primary,
);
final TextStyle pageTitle = TextStyle(
  fontSize: 40,
  fontFamily: "Oxanium",
  fontWeight: FontWeight.w700,
  color: Themes.dark.colorScheme.primary,
);

final TextStyle textRegular14 =
    TextStyle(fontSize: 14, color: Themes.dark.textTheme.bodyText1!.color);

final TextStyle h3Regular = TextStyle(
    fontSize: 24,
    color: Themes.dark.colorScheme.primary,
    fontFamily: "Oxanium");

final TextStyle h4Medium = TextStyle(
    fontSize: 20,
    color: Themes.dark.colorScheme.primary,
    fontWeight: FontWeight.w500);

final TextStyle h5Regular = TextStyle(
    fontSize: 18,
    color: Themes.dark.textTheme.bodyText1!.color,
    fontFamily: "Oxanium");
