import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

import '../controllers/journal_details_controller.dart';

class JournalDetailsView extends GetView<JournalDetailsController> {
  const JournalDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        title:  Text('${controller.args['date'] ?? 'N/A'}',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, wordSpacing: 5),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: TextField(
             controller: controller.contentController,
              maxLines: 1000,
              keyboardType: TextInputType.multiline,
              readOnly: true,
            ),
          ),
        ),
      ),
    );
  }
}
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