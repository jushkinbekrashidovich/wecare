import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/mood_exercises_controller.dart';

class MoodExercisesView extends GetView<MoodExercisesController> {
  const MoodExercisesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Text(
          "Let's celebrate your happiness!",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Vertical Step Indicator
          Column(
            children: [
              Container(
                width: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...List.generate(3, (index) {
                      return Column(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green,
                            ),
                          ),
                          if (index != 2)
                            Container(
                              width: 3,
                              height: 60,
                              color: Colors.green,
                            ),
                        ],
                      );
                    }),
                  ],
                ),
              ),
            ],
          ),
          // Main Content
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              padding: EdgeInsets.only(left: 8, right: 16),
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(
                      'Getting Started with Headspace',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('1 min music'),
                    trailing: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
