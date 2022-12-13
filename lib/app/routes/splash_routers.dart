import 'package:diet_pdf/app/modules/splash/splash_binding.dart';
import 'package:diet_pdf/app/modules/splash/splash_page.dart';
import 'package:diet_pdf/app/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashRouters {
  SplashRouters._();

  static final routers = <GetPage>[
    GetPage(
      name: RoutesName.splashRoute,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    )
  ];
}
