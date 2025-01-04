import 'package:get/get.dart';

class MoodExercisesController extends GetxController {
  late String selectedMood;

  // List of exercises with their statuses
  var exercises = <ExerciseItem>[].obs;

  // Mapping mood to exercises
  final Map<String, List<String>> moodExercises = {
    "Happy": [
      "Write down 5 things you’re grateful for.",
      "Send a kind message to someone you love.",
      "Look in the mirror and smile for 30 seconds.",
      "Dance to your favorite song for 2 minutes.",
      "Take 3 deep breaths and enjoy the moment."
    ],
    "Calm": [
      "Slowly tense and release each muscle group.",
      "Sit quietly and focus on your breathing for 5 minutes.",
      "Do light stretches like reaching for the sky.",
      "Visualize a peaceful place, like a forest or beach.",
      "Listen to calming music or nature sounds."
    ],
    "Manic": [
      "Name 5 things you see, 4 feel, 3 hear, 2 smell, 1 taste.",
      "Breathe in for 4 seconds, hold for 4, exhale for 6.",
      "Write your thoughts down for 3 minutes.",
      "Take slow, deliberate steps and focus on movement.",
      "Hold an object and describe it in detail to center your mind."
    ],
    "Angry": [
      "Punch a pillow or air to release tension.",
      "Scream into a pillow to let out frustration.",
      "Breathe in through pursed lips and exhale through your nose.",
      "Write an angry letter but don’t send it.",
      "Do 10 push-ups, jumping jacks, or similar exercises."
    ],
    "Sad": [
      "Hug yourself and squeeze gently.",
      "Allow yourself to cry and release emotions.",
      "Listen to a positive, uplifting song.",
      "Say, 'It’s okay to feel this way. I’m doing my best.'",
      "Complete a small, easy task like folding clothes."
    ],
  };

  @override
  void onInit() {
    super.onInit();
    selectedMood = Get.arguments['selectedMood'] ?? 'Happy';

    // Initialize exercises with default "isPast" value as false
    exercises.assignAll(
      (moodExercises[selectedMood] ?? []).map((exercise) {
        return ExerciseItem(text: exercise, isPast: false);
      }).toList(),
    );
  }

  // Mark an exercise as completed
  void markAsPast(int index) {
    exercises[index].isPast = true;
    exercises.refresh(); // Update the UI
  }
}

// Model for an exercise item
class ExerciseItem {
  String text;
  bool isPast;

  ExerciseItem({required this.text, this.isPast = false});
}
