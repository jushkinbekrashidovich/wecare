import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/community_chat_controller.dart';

class CommunityChatView extends GetView<CommunityChatController> {
  const CommunityChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunityChatView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CommunityChatView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
