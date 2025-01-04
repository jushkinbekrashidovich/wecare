import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/journal_controller.dart';

class JournalView extends GetView<JournalController> {
  const JournalView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Journals'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchJournals(), // Refresh the list
          ),
        ],
      ),
      body: Obx(() {
        if (controller.journals.isEmpty) {
          return const Center(
            child: Text(
              'No journals found. Add a new one!',
              style: TextStyle(fontSize: 18),
            ),
          );
        }

        return ListView.builder(
          itemCount: controller.journals.length,
          itemBuilder: (context, index) {
            final journal = controller.journals[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  journal['content'] ?? 'No Content',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  'Mood: ${journal['mood'] ?? 'Unknown'} | Date: ${journal['date'] ?? 'N/A'}',
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _showDeleteConfirmation(index),
                ),
                onTap: () {
                  // Optionally show journal details or navigate to another screen
                  Get.snackbar('Journal Content', journal['content'] ?? 'No Content');
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddJournalDialog(context); // Add a new journal entry
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmation(int index) {
    Get.dialog(
      AlertDialog(
        title: const Text('Delete Journal'),
        content: const Text('Are you sure you want to delete this journal entry?'),
        actions: [
          TextButton(
            onPressed: () => Get.back(), // Close dialog
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              controller.deleteJournal(index);
              Get.back();
            },
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  void _showAddJournalDialog(BuildContext context) {
    final contentController = TextEditingController();
    final moodController = TextEditingController();
    final dateController = TextEditingController();

    Get.dialog(
      AlertDialog(
        title: const Text('Add Journal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: contentController,
              decoration: const InputDecoration(labelText: 'Content'),
            ),
            TextField(
              controller: moodController,
              decoration: const InputDecoration(labelText: 'Mood'),
            ),
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Date (e.g., 2025-01-04)'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              if (contentController.text.isNotEmpty &&
                  moodController.text.isNotEmpty &&
                  dateController.text.isNotEmpty) {
                controller.addJournal(
                  contentController.text,
                  moodController.text,
                  dateController.text,
                );
                Get.back();
              } else {
                Get.snackbar('Error', 'All fields are required!');
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }
}
