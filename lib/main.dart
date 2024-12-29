import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/const/theme/app_theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppThemes.light,
      debugShowCheckedModeBanner: false,
    ),
  );
}
