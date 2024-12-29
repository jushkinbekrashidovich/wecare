import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/support_centre_controller.dart';

class SupportCentreView extends GetView<SupportCentreController> {
  const SupportCentreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CupportCentreView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CupportCentreView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
