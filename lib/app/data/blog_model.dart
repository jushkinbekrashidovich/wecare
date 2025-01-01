import 'package:cloud_firestore/cloud_firestore.dart';

class Blog {
  final String title;
  final String subtitle;
  final String author;
  final String date;

  Blog({
    required this.title,
    required this.subtitle,
    required this.author,
    required this.date,
  });

  // Factory constructor to create a Blog from Firestore document snapshot
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title'] ?? '',
      subtitle: json['subtitle'] ?? '',
      author: json['author'] ?? '',
      date: json['date'] ?? '',
    );
  }
}
