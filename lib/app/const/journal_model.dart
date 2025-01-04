class JournalEntry {
  final String content;
  final String mood; // e.g., "happy", "sad", "mad"
  final String date;

  JournalEntry({required this.content, required this.mood, required this.date});

  // Convert a JournalEntry to a Map
  Map<String, dynamic> toMap() {
    return {
      'content': content,
      'mood': mood,
      'date': date,
    };
  }

  // Create a JournalEntry from a Map
  factory JournalEntry.fromMap(Map<String, dynamic> map) {
    return JournalEntry(
      content: map['content'],
      mood: map['mood'],
      date: map['date'],
    );
  }
}
