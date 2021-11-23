import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

class SearchHistoryWidget extends StatelessWidget {
  const SearchHistoryWidget({
    Key? key,
    required this.searchResult,
  }) : super(key: key);

  final String searchResult;

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
              style: TextStyle(
                  color: Theme.of(context).textTheme.bodyText1!.color),
            )
          ],
        ),
      ),
    );
  }
}
