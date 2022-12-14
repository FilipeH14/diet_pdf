import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:diet_pdf/app/shared/ui/diet_colors.dart';
import 'package:diet_pdf/app/routes/splash_routers.dart';
import 'package:diet_pdf/app/routes/routes_name.dart';

class DietApp extends StatefulWidget {
  const DietApp({Key? key}) : super(key: key);

  @override
  State<DietApp> createState() => _DietAppState();
}

class _DietAppState extends State<DietApp> {

  @override
  void initState() {
    super.initState();
    FirebaseAuth auth = FirebaseAuth.instance;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Diet PDF',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: DietColors.secondary,
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
