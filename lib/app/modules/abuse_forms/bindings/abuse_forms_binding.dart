import 'package:get/get.dart';

import '../controllers/abuse_forms_controller.dart';

class AbuseFormsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AbuseFormsController>(
      () => AbuseFormsController(),
    );
  }
}
