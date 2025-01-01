import 'package:get/get.dart';
import 'package:wecare/app/modules/blogs_page/blogs/controllers/blogs_controller.dart';

import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );
    Get.lazyPut<BlogsController>(
          () => BlogsController(),
    );
  }
}
