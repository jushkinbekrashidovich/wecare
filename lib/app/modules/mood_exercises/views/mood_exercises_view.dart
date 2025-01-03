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
            MyTimeLineTile(isFirst: true, isLast: false, isPast: true, eventCard: Text("data"),),
            MyTimeLineTile(isFirst: false, isLast: false, isPast: true, eventCard: Text("data"),),
            MyTimeLineTile(isFirst: false, isLast: true, isPast: false, eventCard: Text("data", style: TextStyle(color: AppColors.white),),),

          ],
        ),
      ),
    );
  }
}
