import 'package:diet_pdf/app/routes/routes_name.dart';
import 'package:diet_pdf/app/routes/routes_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InitApp extends StatelessWidget {
  const InitApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Diet PDF',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white.withAlpha(190),
      ),
      initialRoute: RoutesName.splashRoute,
      getPages: RoutesPages.pages,
    );
  }
}
