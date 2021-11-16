import 'package:companion/app/controllers/bottomnavbar_controller.dart';
import 'package:companion/app/controllers/home_controller.dart';
import 'package:companion/app/controllers/info_controller.dart';
import 'package:companion/app/controllers/login_controller.dart';
import 'package:get/get.dart';
import '../controllers/root_controller.dart';

class RootBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootController>(() => RootController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<BottomnavbarController>(() => BottomnavbarController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<InfoController>(() => InfoController());
  }
}
