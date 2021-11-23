import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

import 'search_input_widget.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 57,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(6),
                  ),
                  color: Theme.of(context).colorScheme.background,
                  border: Border.all(color: const Color(0xff525252))),
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return SearchInputWidget(
                  searchController: searchController,
                  constraints: constraints,
                );
              })),
        ));
  }
}
