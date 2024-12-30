import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../../data/blog_model.dart';

class BlogsController extends GetxController {
  final blogs = <Blog>[].obs; // Reactive list to store blogs

  @override
  void onInit() {
    super.onInit();
    fetchBlogs();
  }

  void fetchBlogs() async {
    try {
      final snapshot = await FirebaseFirestore.instance.collection('blogs').get();
      final fetchedBlogs = snapshot.docs
          .map((doc) => Blog.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      blogs.assignAll(fetchedBlogs); // Update the reactive list
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch blogs: $e');
    }
  }
}
