import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wecare/app/routes/app_pages.dart'; // For formatting the date

class AddPostController extends GetxController {
  final focusNode1 = FocusNode();
  final focusNode2 = FocusNode();
  final RxBool test = false.obs;
  final usernameText = TextEditingController();
  final contentText = TextEditingController();

  // Firestore instance
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Method to add post
  Future<void> addPost() async {
    // Validate inputs
    if (usernameText.text.isEmpty || contentText.text.isEmpty) {
      Get.snackbar(
        "Error",
        "Both fields are required!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return; // Don't continue if validation fails
    }

    // Prepare post data
    String username = usernameText.text.trim();
    String content = contentText.text.trim();
    String dateAdded = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now()); // Current date

    // Save to Firestore
    try {
      await _firestore.collection('posts').add({
        'author': username,
        'content': content,
        'dateAdded': dateAdded,
        'comments': [], // Empty list initially
      });

      // Clear inputs after successful submission
      usernameText.clear();
      contentText.clear();

      Get.snackbar(
        "Success",
        "Your post has been added!",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
      Get.offAllNamed(Routes.MAIN);
    } catch (e) {
      Get.snackbar(
        "Error",
        "Failed to add post. Please try again.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
