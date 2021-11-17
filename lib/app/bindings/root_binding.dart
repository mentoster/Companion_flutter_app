import 'package:companion/app/controllers/avengers_controller.dart';
import 'package:companion/app/controllers/bottomnavbar_controller.dart';
import 'package:companion/app/controllers/community_controller.dart';
import 'package:companion/app/controllers/favorite_controller.dart';
import 'package:companion/app/controllers/news_controller.dart';
import 'package:companion/app/controllers/profile_controller.dart';
import 'package:companion/app/controllers/login_controller.dart';
import 'package:get/get.dart';
import '../controllers/root_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<BottomnavbarController>(() => BottomnavbarController());
    Get.lazyPut<ProfileController>(() => ProfileController());
    Get.lazyPut<NewsController>(() => NewsController());
    Get.lazyPut<AvengersController>(() => AvengersController());
    Get.lazyPut<CommunityController>(() => CommunityController());
    Get.lazyPut<FavoriteController>(() => FavoriteController());
  }
}
