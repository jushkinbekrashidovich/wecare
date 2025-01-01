import 'package:get/get.dart';

class BlogPostDetailsController extends GetxController {


  var postTitle;
  var postContent;
  @override
  void onInit() {
    final Map<String, dynamic> args = Get.arguments ?? {};
    postTitle = args['blogTitle'] ?? 'Default Title';
    postContent = args['blogContent'] ?? 'Default Title';
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
