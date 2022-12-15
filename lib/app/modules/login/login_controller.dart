import 'package:diet_pdf/app/services/user/user_service.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final UserService _userService;

  LoginController({required UserService userService})
      : _userService = userService;
  
  Future<void> googleLogin() async {
    final user = await _userService.googleLogin();
  }
}
