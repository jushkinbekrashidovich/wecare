import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/const/time_line_tile.dart';

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
          onPressed: () {},
        ),

      ),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Text("Small steps to help you feel better 😊️️️️️️", style: TextStyle(fontSize: 18, color: AppColors.black),),
            SizedBox(height: 7,),
            MyTimeLineTile(isFirst: true, isLast: false, isPast: true, textcontent: "Data",),
            MyTimeLineTile(isFirst: false, isLast: false, isPast: true,textcontent: "Data",),
            MyTimeLineTile(isFirst: false, isLast: false, isPast: true, textcontent: "Data",),
            MyTimeLineTile(isFirst: false, isLast: false, isPast: false, textcontent: "Data",),
            MyTimeLineTile(isFirst: false, isLast: true, isPast: false, textcontent: "Data",),

          ],
        ),
      ),
    );
  }
}
