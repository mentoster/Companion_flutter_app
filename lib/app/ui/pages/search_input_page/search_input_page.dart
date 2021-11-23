import 'package:companion/app/ui/global_widgets.dart/back_button_widget.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:companion/app/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/search_history_widget.dart';
import 'widgets/search_input_widget.dart';

class SearchInputPage extends StatefulWidget {
  SearchInputPage({Key? key}) : super(key: key);
  final _searchController = TextEditingController();
  @override
  State<SearchInputPage> createState() => _SearchInputPageState();
}

class _SearchInputPageState extends State<SearchInputPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding / 2),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(6),
                            ),
                            color: Theme.of(context).colorScheme.background,
                            border: Border.all(color: const Color(0xff525252))),
                        child: LayoutBuilder(builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return SearchInputWidget(
                            searchController: widget._searchController,
                            constraints: constraints,
                          );
                        })),
                  )),
              const Divider(),
              SearchHistoryWidget(
                  searchResult: "Team Fortress 2", theme: theme),
              const Divider(),
              SearchHistoryWidget(searchResult: "Dota 2", theme: theme),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
