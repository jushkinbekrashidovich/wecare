import 'dart:convert';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JournalController extends GetxController {
  // Observable list of journals
  final journals = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchJournals(); // Fetch journals when the controller initializes
  }

  // Fetch journals from SharedPreferences
  Future<void> fetchJournals() async {
    final prefs = await SharedPreferences.getInstance();
    final String? savedEntries = prefs.getString('journal_entries');
    if (savedEntries != null) {
      journals.value = List<Map<String, dynamic>>.from(json.decode(savedEntries));
    } else {
      journals.clear();
    }
  }

  // Add a new journal
  Future<void> addJournal(String content, String mood, String date) async {
    final prefs = await SharedPreferences.getInstance();
    final newJournal = {
      'content': content,
      'mood': mood,
      'date': date,
    };
    journals.add(newJournal);
    await prefs.setString('journal_entries', json.encode(journals));
    Get.snackbar('Success', 'Journal added successfully!');
  }

  // Delete a journal entry
  Future<void> deleteJournal(int index) async {
    final prefs = await SharedPreferences.getInstance();
    journals.removeAt(index);
    await prefs.setString('journal_entries', json.encode(journals));
    Get.snackbar('Deleted', 'Journal entry removed!');
  }
}
