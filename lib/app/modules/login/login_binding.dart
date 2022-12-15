import 'package:get/get.dart';
import 'package:diet_pdf/app/modules/login/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(LoginController(userService: Get.find()));
  }
}
