
import 'package:get/get.dart';
import '../controllers/avengers_controller.dart';


class AvengersBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvengersController>(() => AvengersController());
  }
}