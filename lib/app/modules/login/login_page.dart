import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:diet_pdf/app/modules/login/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Container(),
    );
  }
}
