import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CommunityChatController extends GetxController {
  // Stream to fetch posts from Firestore
  Rx<List<DocumentSnapshot>> posts = Rx<List<DocumentSnapshot>>([]);

  @override
  void onInit() {
    super.onInit();
    // Fetch posts from Firestore
    fetchPosts();
  }

  // Fetch posts from Firestore
  void fetchPosts() {
    FirebaseFirestore.instance
        .collection('posts')
        .orderBy('dateAdded', descending: true) // Order by dateAdded (latest first)
        .snapshots()
        .listen((snapshot) {
      // Update the posts list
      posts.value = snapshot.docs;
    });
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
