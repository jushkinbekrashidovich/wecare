import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_library_controller.dart';

class MyLibraryView extends GetView<MyLibraryController> {
  const MyLibraryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyLibraryView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyLibraryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
