import 'package:get/get.dart';

import '../controllers/motivation_scroll_controller.dart';

class MotivationScrollBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MotivationScrollController>(
      () => MotivationScrollController(),
    );
  }
}
