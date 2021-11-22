import 'package:flutter/material.dart';

import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_text_theme.dart';

class CommunityCardButton extends StatelessWidget {
  final String title;
  final IconData icon;
  const CommunityCardButton({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 132,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surface,
      ),
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Theme.of(context).textTheme.bodyText1!.color),
          const SizedBox(height: defaultPadding),
          Text(
            title,
            textAlign: TextAlign.center,
            style: textRegular16,
          ),
        ],
      ),
    );
  }
}
