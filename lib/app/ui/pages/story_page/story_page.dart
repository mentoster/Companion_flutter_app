
import 'package:companion/app/controllers/news_controller.dart';
import 'package:companion/app/ui/theme/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story/story_page_view/story_page_view.dart';

import 'widgets/gradient_widget.dart';

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final NewsController _newsController = Get.find();
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          return SafeArea(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text('Witcher',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: "Oxanium",
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
              ),
              Container(
                width: double.infinity,
                height: size.height * 0.85,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: Colors.black),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                      child: Image.asset(
                          _newsController
                              .dummyStories[pageIndex].imagesUrl[storyIndex],
                          fit: BoxFit.cover,
                          height: size.height,
                          width: size.width),
                    ),
                    const GradientWidget(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: screenPadding),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _newsController
                                    .dummyStories[pageIndex].textTitle,
                                style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .color,
                                  fontSize: 18,
                                  fontFamily: "Oxanium",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: defaultPadding),
                                child: Text(
                                  _newsController
                                      .dummyStories[pageIndex].description,
                                  style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 24),
                                child: Text(
                                  _newsController.dummyStories[pageIndex].date,
                                  style: const TextStyle(
                                    color: Color(0x99ffffff),
                                    fontSize: 12,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ));
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Stack(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ]);
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          return 0;
        },
        pageLength: _newsController.dummyStories.length,
        storyLength: (int pageIndex) {
          return _newsController.dummyStories[pageIndex].imagesUrl.length;
        },
        onPageLimitReached: () {
          // Get.back();
        },
      ),
    );
  }
}
