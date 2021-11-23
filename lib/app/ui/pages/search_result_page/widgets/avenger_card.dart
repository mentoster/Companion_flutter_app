import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';
import 'package:companion/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvengerCard extends StatelessWidget {
  final String imagePath;
  final String nickname;
  final String hours;
  final String kills;
  AvengerCard({
    Key? key,
    required this.imagePath,
    required this.nickname,
    required this.hours,
    required this.kills,
  }) : super(key: key);

  final statStyle = TextStyle(
    fontSize: 18,
    fontFamily: "Oxanium",
    fontWeight: FontWeight.w700,
    color: Themes.dark.colorScheme.primary,
  );
  final strutStyle = const StrutStyle(
    fontSize: 18.0,
    height: 1.3,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            color: Theme.of(context).colorScheme.surface,
          ),
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                maxRadius: 24,
                backgroundImage: AssetImage(imagePath),
              ),
              Text(
                nickname,
                style: nickNameSearchResult,
                strutStyle: strutStyle,
              ),
              Text(
                hours,
                style: statStyle,
                strutStyle: strutStyle,
              ),
              Text(
                kills,
                style: statStyle,
                strutStyle: strutStyle,
              ),
            ],
          )),
    );
  }
}
