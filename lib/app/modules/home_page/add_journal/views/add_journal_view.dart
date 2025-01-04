import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            const Text('Mood:', style: TextStyle(fontSize: 16)),
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
           TextField(
              onChanged: (value) => controller.content.value = value,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),



            // Date Display


            // Save Button
            ElevatedButton(
              onPressed: () => controller.saveJournalEntry(),
              child: const Text('Save Journal'),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
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
