
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();

 static final light = ThemeData.light().copyWith(
  scaffoldBackgroundColor:  AppColors.backgroundColor, // Body background color
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    elevation: 0,
   titleTextStyle: TextStyle(
     color: AppColors.black,
     fontSize: 17
   ),
    backgroundColor: AppColors.backgroundColor, // App bar background color
    // iconTheme: IconThemeData(color: AppColors.lightIconColor),
   //titleTextStyle: TextStyle(color: AppColors.lightText1),
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.bottomColor,
    unselectedItemColor: AppColors.secondaryGreyTextColor,
    selectedItemColor: AppColors.mainOrangeColor,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColors.mainLightText),
    bodyMedium: TextStyle(color: AppColors.secondaryGreyTextColor),
  ),
);



}
