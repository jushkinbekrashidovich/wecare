import 'package:get/get.dart';

import '../controllers/my_library_controller.dart';

class MyLibraryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyLibraryController>(
      () => MyLibraryController(),
    );
  }
}
