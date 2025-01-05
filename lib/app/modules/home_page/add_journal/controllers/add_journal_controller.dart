import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert'; // For JSON encoding/decoding

class AddJournalController extends GetxController {
  // Reactive fields for content, mood, and date
  final content = ''.obs;
  final mood = 'happy'.obs;
  final date = ''.obs;

  // Method to save a journal entry
  Future<void> saveJournalEntry() async {
    // Retrieve SharedPreferences
    final prefs = await SharedPreferences.getInstance();

    // Retrieve existing entries
    final String? savedEntries = prefs.getString('journal_entries');
    List<Map<String, dynamic>> journalList =
    savedEntries != null ? List<Map<String, dynamic>>.from(json.decode(savedEntries)) : [];

    // Create a new entry
    final newEntry = {
      'content': content.value,
      'mood': mood.value,
      'date': date.value.isNotEmpty ? date.value : DateTime.now().toIso8601String().split('T')[0],
    };

    // Add the new entry to the list
    journalList.add(newEntry);

    // Save the updated list back to SharedPreferences
    await prefs.setString('journal_entries', json.encode(journalList));

    // Clear fields after saving
    content.value = '';
    mood.value = 'happy';
    date.value = '';

  }
}
