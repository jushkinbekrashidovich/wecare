import 'package:get/get.dart';

import '../controllers/community_chat_details_controller.dart';

class CommunityChatDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CommunityChatDetailsController>(
      () => CommunityChatDetailsController(),
    );
  }
}
