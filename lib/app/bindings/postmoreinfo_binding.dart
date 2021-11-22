
import 'package:get/get.dart';
import '../controllers/postmoreinfo_controller.dart';


class PostmoreinfoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostmoreinfoController>(() => PostmoreinfoController());
  }
}