
import 'package:get/get.dart';
import '../controllers/newpost_controller.dart';


class NewpostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewpostController>(() => NewpostController());
  }
}