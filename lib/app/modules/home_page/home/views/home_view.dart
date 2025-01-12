
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(()=>

      Scaffold(
      appBar: AppBar(

        title: Text(
          "iCare",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        actions: [
        GestureDetector(
          onTap: (){
            Get.toNamed(Routes.EXCHANGE);
          },
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("🌷", style: TextStyle(fontSize: 20),),
            Text(controller.myFlowers.toString(), style: TextStyle(fontSize: 17, color: AppColors.mainOrangeColor, fontWeight: FontWeight.bold),),
            SizedBox(width: 10,)
          ],
                ),
        ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "How are you feeling today?",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMoodIcon(icon:  Icons.sentiment_satisfied_alt, label: "Happy", color:  Colors.pink,
                    ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES, arguments: {"selectedMood":"Happy"});
                }),
                _buildMoodIcon(icon:  Icons.nights_stay,label: "Calm", color:Colors.blue, ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES, arguments: {"selectedMood":"Calm"});
                }),
                _buildMoodIcon(icon:  Icons.sync_alt, label: "Manic",color:  Colors.cyan, ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES, arguments: {"selectedMood":"Manic"});
                }),
                _buildMoodIcon(icon:  Icons.sentiment_very_dissatisfied, label: "Angry", color:  Colors.orange, ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES, arguments: {"selectedMood":"Angry"});
                }),
                _buildMoodIcon(icon:  Icons.sentiment_dissatisfied, label: "Sad", color:  Colors.green, ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES, arguments: {"selectedMood":"Sad"});
                }),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCardButton(label:  "Journal", icon: Icons.book,color:  AppColors.mainOrangeColor, ontap: (){
                  Get.toNamed(Routes.JOURNAL);
                }),
                _buildCardButton(label:  "My Library", icon: Icons.library_books,color:  AppColors.mainOrangeColor,
                ontap: (){
                  Get.toNamed(Routes.MY_LIBRARY);
                }
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Icon(Icons.format_quote, color: Colors.grey),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      controller.selectedQuote.value,
                      style: const TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
           Spacer(),
           Center(
             child: GestureDetector(
               onTap: (){
                Get.offAllNamed(Routes.WEATHER_PAGE);
               },
               child: CircleAvatar(

                 radius: 70,
                 backgroundColor: Colors.red,
                 child: Text("EXIT", textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.white, fontSize: 40),),
               ),
             ),
           )

          ],
        ),
      ),
    ),);
  }

  Widget _buildMoodIcon({required IconData icon, required String label, required Color color, required Function ontap  }) {
    return GestureDetector(
      onTap: (){
     ontap();
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: color.withOpacity(0.2),
            child: Icon(icon, color: color, size: 30),
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: Colors.black87),
          ),
        ],
      ),
    );
  }

  Widget _buildCardButton({required String label, required IconData icon, required Color color, required Function ontap}) {
    return GestureDetector(
      onTap: (){
        ontap();
      },
      child: Container(
        width: 150,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            SizedBox(height: 5),
            Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

