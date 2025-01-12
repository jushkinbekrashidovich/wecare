import 'package:get/get.dart';

import '../controllers/support_types_controller.dart';

class SupportTypesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SupportTypesController>(
      () => SupportTypesController(),
    );
  }
}
