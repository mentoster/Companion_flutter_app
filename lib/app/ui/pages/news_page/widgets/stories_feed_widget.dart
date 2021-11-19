import 'package:companion/app/controllers/news_controller.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';

import 'story_widget.dart';

class StoriesFeedWidget extends StatelessWidget {
  const StoriesFeedWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final NewsController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: controller.dummyStories.length,
        itemBuilder: (context, i) {
          if (i == 0) {
            return Row(
              children: [
                const SizedBox(
                  width: defaultPadding,
                ),
                StoryWidget(storyModel: controller.dummyStories[i])
              ],
            );
          }
          return StoryWidget(storyModel: controller.dummyStories[i]);
        },
      ),
    );
  }
}
