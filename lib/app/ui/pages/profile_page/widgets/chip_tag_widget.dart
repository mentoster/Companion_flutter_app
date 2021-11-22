import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

class ChipTagWidget extends StatelessWidget {
  final String name;
  const ChipTagWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 6),
      child: Chip(
        labelPadding: const EdgeInsets.only(left: 8.0, right: 8.0),
        backgroundColor: const Color(0xff666666),
        label: Text(name),
      ),
    );
  }
}
