import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class CommunityChatController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }



  Future<void> createPost(String message) async {
    await FirebaseFirestore.instance.collection('posts').add({
      'message': message,
      'timestamp': FieldValue.serverTimestamp(),
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
