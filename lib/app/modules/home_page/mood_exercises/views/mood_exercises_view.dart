import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:slider_button/slider_button.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/const/time_line_tile.dart';
import 'package:wecare/app/routes/app_pages.dart';
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
              child:  ListView.builder(
                  itemCount: controller.exercises.length,
                  itemBuilder: (context, index) {
                    final exercise = controller.exercises[index];
    void _launchURL(String? url) async {
    if (url != null && await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }}
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
                        ontap: (){
                          _launchURL(exercise.url);
                          controller.markAsPast(index);
                        },
                      ),
                    );
                  },
                ),

            ):Expanded(
              child: Center(
               child: Text("Let’s do a few easy exercises to help you feel better! 😊️️️", textAlign: TextAlign.center,style: TextStyle(fontSize: 18,),),
                         ),
            ),
           Visibility(
             visible: controller.areAllExercisesCompleted(),
             child: GestureDetector(
             onTap: ()async{

               controller.confettiController.play();
               showDialog(
                   context: context,
                   builder: (BuildContext context) => CupertinoAlertDialog(
                     title: new Text("Congrats! 🎉"),
                     content: new Text("You’ve earned a 🌷!"),
                     actions: <Widget>[
                       CupertinoDialogAction(
                         isDefaultAction: true,
                         child: Text("Recieve"),
                         onPressed: ()async{
                           // Increment the number of flowers
                           SharedPreferences prefs = await SharedPreferences.getInstance();
                           int currentFlowers = prefs.getInt('myFlowers') ?? 0; // Get current flowers, default to 0 if not set
                           prefs.setInt('myFlowers', currentFlowers + 1); // Increment and store the new value

                           // Optionally: Retrieve the updated value and print it for debugging
                           print("Updated flowers: ${prefs.getInt('myFlowers')}");
                           Get.offAllNamed(Routes.MAIN);
                         },
                       ),
                     ],
                   )
               );



             },
             child: Container(

               padding: EdgeInsets.symmetric(horizontal: 12),
               child: Center(child: Text("Finish", style: TextStyle(color: AppColors.white, fontSize: 18),textAlign: TextAlign.center,)),
               height: 47,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(6),
                   color: AppColors.mainOrangeColor
               ),
             ),
           ),),


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
    ));
  }
}
