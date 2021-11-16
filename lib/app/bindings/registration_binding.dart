
import 'package:get/get.dart';
import '../controllers/registration_controller.dart';


class RegistrationBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegistrationController>(() => RegistrationController());
  }
}