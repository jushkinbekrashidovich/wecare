import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/const/time_line_tile.dart';
import '../../../../const/swiper.dart';
import '../controllers/mood_exercises_controller.dart';

class MoodExercisesView extends GetView<MoodExercisesController> {
  const MoodExercisesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(()=> Scaffold(
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
            Visibility(
              visible: controller.isStarted.value,
              child: Text(
                "Small steps to help you feel better 😊",
                style: TextStyle(fontSize: 18, color: AppColors.black),
              ),
            ),
            const SizedBox(height: 10),
           controller.isStarted.value? Expanded(
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
            ):Expanded(
              child: Center(
               child: Text("There will be small exercises to help you to feel better 😊️️️️️ ️", textAlign: TextAlign.center,style: TextStyle(fontSize: 18,),),
                         ),
            ),

            SwipeToStartButton(
              text: controller.isStarted.value?  "Slide to start next exercise":"Please slide to start",
              onSwipe: ()async{
                controller.isStarted.value = true;
               print(controller.isStarted.value.toString()+"hii");

              },
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    ),);
  }
}
