import 'package:companion/app/bindings/registration_binding.dart';
import 'package:companion/app/bindings/root_binding.dart';
import 'package:companion/app/ui/pages/registration_page/registration_page.dart';
import 'package:companion/app/ui/pages/root_page/root_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => RootPage(), binding: RootBinding()),
    GetPage(
        name: Routes.REGISTRATION,
        page: () => const RegistrationPage(),
        binding: RegistrationBinding()),
  ];
}
