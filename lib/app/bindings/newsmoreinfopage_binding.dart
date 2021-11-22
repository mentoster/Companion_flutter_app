
import 'package:get/get.dart';
import '../controllers/newsmoreinfopage_controller.dart';


class NewsmoreinfopageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsmoreinfopageController>(() => NewsmoreinfopageController());
  }
}