import 'package:get/get.dart';

import '../controllers/hotline_numbers_controller.dart';

class HotlineNumbersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HotlineNumbersController>(
      () => HotlineNumbersController(),
    );
  }
}
