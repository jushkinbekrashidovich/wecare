import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecare/app/modules/home_page/journal/controllers/journal_controller.dart';
import '../../../../const/theme/app_colors.dart';
import '../controllers/add_journal_controller.dart';

class AddJournalView extends GetView<AddJournalController> {
  const AddJournalView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Obx(() =>
      Scaffold(
      appBar: AppBar(
        title:  Text('${controller.date.value.isNotEmpty ? controller.date.value : DateTime.now().toIso8601String().split('T')[0]}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 5),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Mood Selection
            const Text('How are you feeling today?', style: TextStyle(fontSize: 16)),
            SizedBox(height: 5,),
            Row(
              children: [
                _moodButton('happy', '😊', controller),
                const SizedBox(width: 8),
                _moodButton('sad', '😢', controller),
                const SizedBox(width: 8),
                _moodButton('mad', '😡', controller),
              ],
            ),
            const SizedBox(height: 16),
            // Content TextField
           Expanded(
             child: SingleChildScrollView(
               child: TextField(
                  onChanged: (value) => controller.content.value = value,
                 maxLines: 1000,
                 keyboardType: TextInputType.multiline,
                 showCursor: true,decoration: InputDecoration(
                 hintText: "Write.."
               ),
                ),
             ),
           ),
            const SizedBox(height: 16),

            // Save Button
            GestureDetector(
              onTap: ()async{
                controller.saveJournalEntry();
                Get.back();
                Get.find<JournalController>().fetchJournals();
              },
              child: Container(

                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Center(child: Text("Save", style: TextStyle(color: AppColors.white, fontSize: 18),textAlign: TextAlign.center,)),
                height: 47,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: AppColors.mainOrangeColor
                ),
              ),
            ),

          ],
        ),
      ),));
  }

  Widget _moodButton(String mood, String emoji, AddJournalController controller) {
    return Obx(() => ChoiceChip(
      label: Text(emoji, style: const TextStyle(fontSize: 20)),
      selected: controller.mood.value == mood,
      onSelected: (selected) {
        if (selected) controller.mood.value = mood;
      },
    ));
  }
}
