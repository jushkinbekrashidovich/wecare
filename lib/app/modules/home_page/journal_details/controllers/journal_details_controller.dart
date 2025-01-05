import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JournalDetailsController extends GetxController {
  late Map<String, dynamic> args;
  late TextEditingController contentController;

  @override
  void onInit() {
    args = Get.arguments as Map<String, dynamic>;
    contentController = TextEditingController(text: args['content'] ?? '');

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    contentController.dispose();
    super.onClose();
  }

}
