import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CommunityChatDetailsController extends GetxController {
  final focusNode1 = FocusNode();
  final commentController = TextEditingController();
  RxBool isLoading = true.obs;
  RxMap<String, dynamic> postDetails = <String, dynamic>{}.obs;
  RxList<Map<String, dynamic>> comments = <Map<String, dynamic>>[].obs;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  late String postId; // Holds the post ID passed from the previous page.

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      postId = Get.arguments['postID'] as String;
      fetchPostDetails();
    }
  }

  Future<void> fetchPostDetails() async {
    isLoading.value = true;

    try {
      // Fetch post details
      DocumentSnapshot postSnapshot = await _firestore.collection('posts').doc(postId).get();

      if (postSnapshot.exists) {
        postDetails.value = postSnapshot.data() as Map<String, dynamic>;

        // Fetch comments (if they exist)
        List<dynamic> postComments = postDetails.value['comments'] ?? [];
        comments.value = List<Map<String, dynamic>>.from(postComments);
      } else {
        Get.snackbar("Error", "Post not found!");
      }
    } catch (e) {
      Get.snackbar("Error", "Failed to fetch post details: $e");
    } finally {
      isLoading.value = false;
    }
  }
  String generateRandomUsername() {
    const characters = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final random = Random();
    final usernameLength = 8; // You can adjust the length of the username

    return List.generate(usernameLength, (index) {
      return characters[random.nextInt(characters.length)];
    }).join();
  }
  Future<void> addComment() async {
    if (commentController.text.trim().isEmpty) {
      Get.snackbar("Error", "Comment cannot be empty");
      return;
    }

    isLoading.value = true;
    String newComment = commentController.text.trim();

    try {
      // Add comment to the post's comments array
      String randomUsername = generateRandomUsername();
      await _firestore.collection('posts').doc(postId).update({
        'comments': FieldValue.arrayUnion([
          {
            'author': randomUsername, // Replace with actual username
            'content': newComment,
            'dateAdded': DateTime.now().toIso8601String(),
          }
        ]),
      });

      // Update local comments list
      comments.add({
        'author': 'CurrentUserName', // Replace with actual username
        'content': newComment,
        'dateAdded': DateTime.now().toIso8601String(),
      });

      commentController.clear();
    } catch (e) {
      Get.snackbar("Error", "Failed to add comment: $e");
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    focusNode1.dispose();
    commentController.dispose();
    super.onClose();
  }
}
