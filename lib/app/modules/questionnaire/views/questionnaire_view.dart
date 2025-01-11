import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/questionnaire_controller.dart';

class QuestionnaireView extends GetView<QuestionnaireController> {
  const QuestionnaireView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QuestionnaireView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'QuestionnaireView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
