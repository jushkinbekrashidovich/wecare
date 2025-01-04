import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/const/time_line_tile.dart';
import '../../../const/swiper.dart';
import '../controllers/mood_exercises_controller.dart';

class MoodExercisesView extends GetView<MoodExercisesController> {
  const MoodExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Small steps to help you feel better 😊",
              style: TextStyle(fontSize: 18, color: AppColors.black),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Obx(
                    () => ListView.builder(
                  itemCount: controller.exercises.length,
                  itemBuilder: (context, index) {
                    final exercise = controller.exercises[index];
                    return GestureDetector(
                      onTap: () {
                        // Mark the exercise as completed when tapped
                        if (!exercise.isPast) {
                          controller.markAsPast(index);
                        }
                      },
                      child: MyTimeLineTile(
                        isFirst: index == 0,
                        isLast: index == controller.exercises.length - 1,
                        isPast: exercise.isPast,
                        textcontent: exercise.text,
                      ),
                    );
                  },
                ),
              ),
            ),

            SwipeToStartButton(
              onSwipe: (){

              },
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
