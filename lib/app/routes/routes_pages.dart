import 'package:diet_pdf/app/modules/splash/splash_binding.dart';
import 'package:get/get.dart';

import 'package:diet_pdf/app/modules/splash/splash_page.dart';
import 'package:diet_pdf/app/routes/routes_name.dart';

abstract class RoutesPages {
  static final pages = <GetPage>[
    GetPage(
      name: RoutesName.splashRoute,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
  ];
}
