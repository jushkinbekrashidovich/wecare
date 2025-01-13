import 'package:get/get.dart';

import '../controllers/therapist_search_controller.dart';

class TherapistSearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TherapistSearchController>(
      () => TherapistSearchController(),
    );
  }
}
