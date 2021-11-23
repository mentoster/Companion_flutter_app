import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../search_input_page.dart';

class SearchInputWidget extends StatelessWidget {
  const SearchInputWidget({
    Key? key,
    required this.searchController,
    required this.constraints,
  }) : super(key: key);

  final TextEditingController searchController;
  final BoxConstraints constraints;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: GestureDetector(
              onTap: () => Get.back(), child: const Icon(Icons.chevron_left)),
        ),
        SizedBox(
          width: constraints.maxWidth - defaultPadding * 5,
          child: TextField(
            autofocus: true,
            controller: searchController,
            cursorColor: Theme.of(context).textTheme.bodyText1!.color,
            style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).textTheme.bodyText1!.color),
            decoration: const InputDecoration(
              // disable borders
              border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
              errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
              focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.transparent)),
            ),
          ),
        ),
      ],
    );
  }
}
