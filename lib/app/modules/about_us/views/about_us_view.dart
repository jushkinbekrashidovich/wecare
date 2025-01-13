import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../const/theme/app_colors.dart';
import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About us"),
        leading: const BackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black, // Sets the back button and title color
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          // Icon or Image Section
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.orange.withOpacity(0.2), // Background color for the placeholder
                borderRadius: BorderRadius.circular(16),
              ),
              child:  Image.asset("assets/playstore.png"),
            ),
          ),
          const SizedBox(height: 20),
          // About our team section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    "iCare team",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "We are junior students at Westminster International University in Tashkent",
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 12),
                  Text("Sevara Bobomurodova - App Development, FlutterFlow"),
                  Text("Malika Islomova - Project Manager, UX/UI Designing"),

                ],
              ),
            ),
          ),
          const Spacer(),
          // App version section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Text(
                  "App version: 1.0.0",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
