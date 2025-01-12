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
      "Write down 5 things you’re grateful for.": "https://www.youtube.com/shorts/kNZxMBTtQO8",
      "Send a kind message to someone you love.": "https://www.youtube.com/shorts/rd3gyjonYgE",
      "Look in the mirror and smile for 30 seconds.": "https://www.youtube.com/watch?v=gg8hCDy_RkI",
      "Dance to your favorite song for 2 minutes.": "https://www.youtube.com/shorts/QnK0VplAE3A",
      "Take 3 deep breaths and enjoy the moment.": "https://www.youtube.com/shorts/4i4STiV86ds"
    },
    "Calm": {
      "Slowly tense and release each muscle group.": "https://www.youtube.com/shorts/tHdV5vKeC6c",
      "Sit quietly and focus on your breathing for 5 minutes.": "https://www.youtube.com/watch?v=DbDoBzGY3vo",
      "Do light stretches like reaching for the sky.": "https://www.youtube.com/watch?v=Zv1wILGzeec",
      "Visualize a peaceful place, like a forest or beach.": "https://www.youtube.com/watch?v=j4-dMVI9okU",
      "Listen to calming music or nature sounds.": "https://www.youtube.com/watch?v=lE6RYpe9IT0"
    },
    "Manic": {
      "Name 5 things you see, 4 feel, 3 hear, 2 smell, 1 taste.": "https://www.youtube.com/watch?v=30VMIEmA114",
      "Breathe in for 4 seconds, hold for 4, exhale for 6.": "https://www.youtube.com/watch?v=LiUnFJ8P4gM",
      "Write your thoughts down for 3 minutes.": "https://www.youtube.com/shorts/6V8SAwzyZFY",
      "Take slow, deliberate steps and focus on movement.": "https://www.youtube.com/watch?v=1-sjUoGO250",
      "Hold an object and describe it in detail to center your mind.": "https://www.youtube.com/watch?v=bFVsuksN-r0"
    },
    "Angry": {
  "Take 3 deep breaths and enjoy the moment.": "https://www.youtube.com/shorts/4i4STiV86ds",
      "Listen to calming music": "https://www.youtube.com/watch?v=eI6ISUNjnt4",
      "Breathe in through pursed lips and exhale through your nose.": "https://www.youtube.com/shorts/1OpOeHtIQ_I",
      "Write an angry letter but don’t send it.": "https://www.youtube.com/watch?v=2dtrZz6DASU",
      "Do 10 push-ups, jumping jacks, or similar exercises.": "https://www.youtube.com/shorts/L74mjehQOtg"
    },
    "Sad": {
      "Hug yourself and squeeze gently.": "https://www.youtube.com/shorts/FKBMsJyug9M",
      "Allow yourself to cry and release emotions.": "https://www.youtube.com/shorts/Tok_x4x5KBc",
      "Listen to a positive, uplifting song.": "https://www.youtube.com/watch?v=LKaXY4IdZ40&list=PL3RlTwDWXaUE1aWCvS18ztDPd6R5epC6j",
      "Say, 'It’s okay to feel this way. I’m doing my best.'": "https://www.youtube.com/shorts/auQWywLec7s",
      "Complete a small, easy task like folding clothes.": "https://www.youtube.com/shorts/-x52WIw5n1k"
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
