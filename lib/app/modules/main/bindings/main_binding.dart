import 'package:get/get.dart';
import 'package:wecare/app/modules/blogs_page/blogs/controllers/blogs_controller.dart';
import 'package:wecare/app/modules/home_page/home/controllers/home_controller.dart';

import '../../community_chat_page/community_chat/controllers/community_chat_controller.dart';
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
    Get.lazyPut<CommunityChatController>(
          () => CommunityChatController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }
}
