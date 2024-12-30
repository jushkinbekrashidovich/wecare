import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

import '../controllers/hotline_numbers_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import '../controllers/hotline_numbers_controller.dart';

class HotlineNumbersView extends GetView<HotlineNumbersController> {
  const HotlineNumbersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hotline Numbers",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: controller.hotlines.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                final Uri url = Uri.parse('tel:${controller.hotlines[index]["number"]}');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  // Better error handling
                  Get.snackbar(
                    "Error",
                    "Could not place the call to ${controller.hotlines[index]["number"]}.",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.redAccent,
                    colorText: Colors.white,
                  );
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.black, width: 0.1),
                ),
                child: Row(
                  children: [
                    Icon(Icons.phone, color: Colors.blueAccent),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.hotlines[index]["number"]!,
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.mainLightText),
                          ),
                          Text(
                            controller.hotlines[index]["detail"]!,
                            style: TextStyle(
                                fontSize: 16, color: Colors.grey[700]),
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       vertical: 6, horizontal: 12),
                    //   decoration: BoxDecoration(
                    //     color: Colors.blueAccent,
                    //     borderRadius: BorderRadius.circular(3),
                    //   ),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       // Add call functionality
                    //       print(
                    //           "Calling ${controller.hotlines[index]["number"]}");
                    //     },
                    //     child: const Text(
                    //       "Call",
                    //       style: TextStyle(color: Colors.white),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
