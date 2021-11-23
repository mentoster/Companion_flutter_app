import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

class SearchHistoryWidget extends StatelessWidget {
  const SearchHistoryWidget({
    Key? key,
    required this.searchResult,
    required this.theme,
  }) : super(key: key);

  final String searchResult;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
        child: Row(
          children: [
            const Icon(Icons.history),
            const SizedBox(
              width: defaultPadding,
            ),
            Text(
              searchResult,
              style: TextStyle(color: theme.textTheme.bodyText1!.color),
            )
          ],
        ),
      ),
    );
  }
}
