import 'package:companion/app/ui/global_widgets.dart/blur_widget.dart';
import 'package:flutter/material.dart';

class NickNameWidget extends StatelessWidget {
  const NickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Stack(children: [
      BlurFilter(
        child: Text(
          "  Mentoster  ",
          style: TextStyle(
            fontSize: 40,
            fontFamily: "Oxanium",
            fontWeight: FontWeight.w700,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.4),
          ),
        ),
        sigmaX: 8.0,
        sigmaY: 8.0,
      ),
      Text(
        "  Mentoster  ",
        style: TextStyle(
          fontSize: 40,
          fontFamily: "Oxanium",
          fontWeight: FontWeight.w700,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ]));
  }
}
