
import 'package:get/get.dart';
import '../controllers/choosegenre_controller.dart';


class ChoosegenreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChoosegenreController>(() => ChoosegenreController());
  }
}