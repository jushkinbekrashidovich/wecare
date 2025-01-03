
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          "Good Afternoon,",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        actions: [
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("🌷", style: TextStyle(fontSize: 20),),
          Text("87", style: TextStyle(fontSize: 17, color: AppColors.mainOrangeColor, fontWeight: FontWeight.bold),),
        SizedBox(width: 10,)
        ],
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
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMoodIcon(icon:  Icons.sentiment_satisfied_alt, label: "Happy", color:  Colors.pink, ontap: (){
                  Get.toNamed(Routes.MOOD_EXERCISES);
                }),
                _buildMoodIcon(icon:  Icons.nights_stay,label: "Calm", color:Colors.blue, ontap: (){}),
                _buildMoodIcon(icon:  Icons.sync_alt, label: "Manic",color:  Colors.cyan, ontap: (){}),
                _buildMoodIcon(icon:  Icons.sentiment_very_dissatisfied, label: "Angry", color:  Colors.orange, ontap: (){}),
                _buildMoodIcon(icon:  Icons.sentiment_dissatisfied, label: "Sad", color:  Colors.green, ontap: (){}),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCardButton("Journal", Icons.book, AppColors.mainOrangeColor),
                _buildCardButton("Library", Icons.library_books, AppColors.mainOrangeColor),
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
                  Icon(Icons.format_quote, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "“It is better to conquer yourself than to win a thousand battles”",
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),


          ],
        ),
      ),
    );
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

  Widget _buildCardButton(String label, IconData icon, Color color) {
    return Container(
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
          Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

