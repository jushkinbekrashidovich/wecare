import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/add_journal_controller.dart';

class AddJournalView extends GetView<AddJournalController> {
  const AddJournalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Journal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Content TextField
            Obx(() => TextField(
              onChanged: (value) => controller.content.value = value,
              maxLines: 4,
              decoration: const InputDecoration(
                labelText: 'Content',
                border: OutlineInputBorder(),
              ),
            )),
            const SizedBox(height: 16),

            // Mood Selection
            const Text('Mood:', style: TextStyle(fontSize: 16)),
            Obx(() => Row(
              children: [
                _moodButton('happy', '😊', controller),
                const SizedBox(width: 8),
                _moodButton('sad', '😢', controller),
                const SizedBox(width: 8),
                _moodButton('mad', '😡', controller),
              ],
            )),
            const SizedBox(height: 16),

            // Date Display
            Obx(() => Text(
              'Date: ${controller.date.value.isNotEmpty ? controller.date.value : DateTime.now().toIso8601String().split('T')[0]}',
              style: const TextStyle(fontSize: 16),
            )),
            const Spacer(),

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
      ),
    );
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
