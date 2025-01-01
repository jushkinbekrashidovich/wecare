import 'package:get/get.dart';

import '../controllers/blog_post_details_controller.dart';

class BlogPostDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BlogPostDetailsController>(
      () => BlogPostDetailsController(),
    );
  }
}
