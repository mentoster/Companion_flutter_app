import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

import 'widgets/seach_bar_widget.dart';
import 'widgets/search_history_widget.dart';

class SearchInputPage extends StatefulWidget {
  SearchInputPage({Key? key}) : super(key: key);
  final _searchController = TextEditingController();
  @override
  State<SearchInputPage> createState() => _SearchInputPageState();
}

class _SearchInputPageState extends State<SearchInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: screenPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBarWidget(searchController: widget._searchController),
              const Divider(),
              const SearchHistoryWidget(searchResult: "Team Fortress 2"),
              const Divider(),
              const SearchHistoryWidget(searchResult: "Dota 2"),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
