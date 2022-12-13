import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:diet_pdf/app/shared/ui/diet_colors.dart';
import 'package:diet_pdf/app/routes/splash_routers.dart';
import 'package:diet_pdf/app/routes/routes_name.dart';

class DietApp extends StatelessWidget {
  const DietApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Diet PDF',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // useMaterial3: true,
        colorSchemeSeed: DietColors.secondary,
        // primarySwatch: Colors.pink,
        // scaffoldBackgroundColor: DietColors.rightGreen,
        fontFamily: 'mplus1',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: DietColors.rightGreen, 
          ),
        ),
      ),
      initialRoute: RoutesName.splashRoute,
      getPages: [
        ...SplashRouters.routers,
      ],
    );
  }
}
