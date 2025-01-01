import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CommunityChatController extends GetxController {
  var posts = Rx<List<DocumentSnapshot>>([]);

  @override
  void onInit() {
    super.onInit();
    // Fetch posts from Firestore in descending order
    _loadPosts();
  }

  void _loadPosts() async {
    final snapshot = await FirebaseFirestore.instance
        .collection('posts')
        .orderBy('dateAdded', descending: true) // Order by 'dateAdded' descending
        .get();

    posts.value = snapshot.docs;
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
