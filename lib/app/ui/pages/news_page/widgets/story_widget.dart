import 'package:companion/app/data/models/story_model.dart';
import 'package:companion/app/ui/pages/story_page/story_page.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoryWidget extends StatelessWidget {
  final StoryModel storyModel;
  const StoryWidget({
    Key? key,
    required this.storyModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: () {
          Get.to(() => const StoryPage(), transition: Transition.zoom);
        },
        child: Container(
          width: 85,
          height: 137.52,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: storyModel.viewed
                  ? Colors.transparent
                  : Theme.of(context).colorScheme.primary,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(19)),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.5,
                color: Colors.transparent,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(18)),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              child: Image.asset(
                storyModel.previewImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
