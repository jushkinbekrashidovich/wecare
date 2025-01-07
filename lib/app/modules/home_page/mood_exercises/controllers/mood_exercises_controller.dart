import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class MoodExercisesController extends GetxController {
  late String selectedMood;
  late ConfettiController confettiController;


  // List of exercises with their statuses
  var exercises = <ExerciseItem>[].obs;

  RxBool isStarted = false.obs;

  // Mapping mood to exercises with their URLs
  final Map<String, Map<String, String>> moodExercises = {
    "Happy": {
      "Write down 5 things you’re grateful for.": "https://www.youtube.com/watch?v=your-link-here",
      "Send a kind message to someone you love.": "https://www.youtube.com/watch?v=your-link-here",
      "Look in the mirror and smile for 30 seconds.": "https://www.youtube.com/watch?v=your-link-here",
      "Dance to your favorite song for 2 minutes.": "https://www.youtube.com/watch?v=your-link-here",
      "Take 3 deep breaths and enjoy the moment.": "https://www.youtube.com/watch?v=your-link-here"
    },
    "Calm": {
      "Slowly tense and release each muscle group.": "https://www.youtube.com/watch?v=your-link-here",
      "Sit quietly and focus on your breathing for 5 minutes.": "https://www.youtube.com/watch?v=your-link-here",
      "Do light stretches like reaching for the sky.": "https://www.youtube.com/watch?v=your-link-here",
      "Visualize a peaceful place, like a forest or beach.": "https://www.youtube.com/watch?v=your-link-here",
      "Listen to calming music or nature sounds.": "https://www.youtube.com/watch?v=your-link-here"
    },
    "Manic": {
      "Name 5 things you see, 4 feel, 3 hear, 2 smell, 1 taste.": "https://www.youtube.com/watch?v=your-link-here",
      "Breathe in for 4 seconds, hold for 4, exhale for 6.": "https://www.youtube.com/watch?v=your-link-here",
      "Write your thoughts down for 3 minutes.": "https://www.youtube.com/watch?v=your-link-here",
      "Take slow, deliberate steps and focus on movement.": "https://www.youtube.com/watch?v=your-link-here",
      "Hold an object and describe it in detail to center your mind.": "https://www.youtube.com/watch?v=your-link-here"
    },
    "Angry": {
      "Punch a pillow or air to release tension.": "https://www.youtube.com/watch?v=9TYl1J7tKek",
      "Scream into a pillow to let out frustration.": "https://www.youtube.com/watch?v=9TYl1J7tKek",
      "Breathe in through pursed lips and exhale through your nose.": "https://www.youtube.com/watch?v=your-link-here",
      "Write an angry letter but don’t send it.": "https://www.youtube.com/watch?v=your-link-here",
      "Do 10 push-ups, jumping jacks, or similar exercises.": "https://www.youtube.com/watch?v=your-link-here"
    },
    "Sad": {
      "Hug yourself and squeeze gently.": "https://www.youtube.com/watch?v=your-link-here",
      "Allow yourself to cry and release emotions.": "https://www.youtube.com/watch?v=your-link-here",
      "Listen to a positive, uplifting song.": "https://www.youtube.com/watch?v=your-link-here",
      "Say, 'It’s okay to feel this way. I’m doing my best.'": "https://www.youtube.com/watch?v=your-link-here",
      "Complete a small, easy task like folding clothes.": "https://www.youtube.com/watch?v=your-link-here"
    }
  };

  @override
  void onInit() {
    super.onInit();
    selectedMood = Get.arguments['selectedMood'] ?? 'Happy';

    // Initialize exercises with default "isPast" value as false
    exercises.assignAll(
      (moodExercises[selectedMood] ?? {}).entries.map((entry) {
        final exerciseText = entry.key;
        final exerciseUrl = entry.value;

        return ExerciseItem(
          text: exerciseText,
          url: exerciseUrl,  // Add the URL
          isPast: false,
        );
      }).toList(),
    );
    confettiController = ConfettiController(duration: Duration(seconds: 1));
  }

  @override
  void dispose() {

    confettiController.dispose();
    super.dispose();
  }


  // Mark an exercise as completed
  void markAsPast(int index) {
    exercises[index].isPast = true;
    exercises.refresh(); // Update the UI
  }
  bool areAllExercisesCompleted() {
    return exercises.every((exercise) => exercise.isPast);
  }


}



// Model for an exercise item
class ExerciseItem {
  String text;
  String? url;  // Nullable URL field for the video link
  bool isPast;

  ExerciseItem({required this.text, this.url, this.isPast = false});
}
