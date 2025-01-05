import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';
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
            String _getMoodEmoji(String? mood) {
              switch (mood) {
                case 'happy':
                  return '😊';
                case 'sad':
                  return '😢';
                case 'mad':
                  return '😡';
                default:
                  return 'Unknown';
              }
            }
            return Card(
              shadowColor: AppColors.mainLighterOrangeColor,
              elevation: 0,
              color: AppColors.mainLighterOrangeColor,
              margin: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  journal['date'],
                  style: TextStyle(fontWeight: FontWeight.w600),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle:
                Text(
                  '${_getMoodEmoji(journal['mood'])}',
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => _showDeleteConfirmation(index),
                ),
                onTap: () {
                  var args = {'mood':journal['mood'], 'content':journal['content'], 'date':journal['date']};
                  Get.toNamed(Routes.JOURNAL_DETAILS, arguments: args);
                },
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.mainOrangeColor,

        elevation: 0,
        onPressed: () {
         Get.toNamed(Routes.ADD_JOURNAL); // Add a new journal entry
        },
        child: const Icon(Icons.add, color: AppColors.white,),
      ),
    );
  }

  void _showDeleteConfirmation(int index) {
    Get.dialog(
      AlertDialog(
        title: const Text('Delete Journal', style: TextStyle(color: Colors.red),),
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

}
