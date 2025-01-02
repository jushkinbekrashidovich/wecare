import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(

      )
    );
  }
}
