import 'package:get/get.dart';

import '../controllers/support_centre_controller.dart';

class SupportCentreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportCentreController>(
      () => SupportCentreController(),
    );
  }
}
