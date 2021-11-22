import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

import '../profile_page.dart';
import 'nickname_widget.dart';

class MainInfoWidget extends StatelessWidget {
  const MainInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 283,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Center(
            child: CircleAvatar(
              maxRadius: 90,
              backgroundImage:
                  AssetImage("assets/images/dummy_images/avatars/ava8.png"),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          NickNameWidget(),
        ],
      ),
    );
  }
}
