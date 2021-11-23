import 'package:companion/app/data/dummy_data/dummy_data.dart';
import 'package:companion/app/data/models/story_model.dart';
import 'package:get/get.dart';

class NewsController extends GetxController {
  List<StoryModel> dummyStories = DummyDatacLass.stories;
}
