import 'package:get/get.dart';

import '../controllers/mood_exercises_controller.dart';

class MoodExercisesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoodExercisesController>(
      () => MoodExercisesController(),
    );
  }
}
