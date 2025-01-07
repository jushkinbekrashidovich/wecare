import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/motivation_scroll_controller.dart';

class MotivationScrollView extends GetView<MotivationScrollController> {
  const MotivationScrollView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MotivationScrollView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MotivationScrollView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
