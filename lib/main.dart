import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sellsajilo/config/routes/routes.dart';
import 'package:sellsajilo/config/routes/routes_name.dart';
import 'package:sellsajilo/config/theme/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      initialRoute: RoutesName.home,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.bgColor,
      ),
    );
  }
}
