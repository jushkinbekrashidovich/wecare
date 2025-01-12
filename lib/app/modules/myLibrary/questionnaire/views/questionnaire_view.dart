import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import '../controllers/questionnaire_controller.dart';

class QuestionnaireView extends GetView<QuestionnaireController> {
  const QuestionnaireView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz',style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Obx(() {
        final currentQuestion = controller.questions[controller.currentQuestionIndex.value];
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Question ${controller.currentQuestionIndex.value + 1}/${controller.questions.length}',
                style:  TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: AppColors.black),
              ),
              const SizedBox(height: 20),
              Text(
                currentQuestion["question"] as String,
                style:  TextStyle(fontSize: 16, color: AppColors.black),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.checkAnswer(true);
                    },
                    child: const Text('True'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.checkAnswer(false);
                    },
                    child: const Text('False'),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              if (controller.feedback.isNotEmpty)
                Text(
                  controller.feedback.value,
                  style:  TextStyle(fontSize: 16, color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              const Spacer(),
              if (controller.feedback.isNotEmpty)
                Align(
                  alignment: Alignment.bottomRight,
                  child:
                      GestureDetector(
                        onTap: (){
                          controller.nextQuestion();
                        },
                        child: Container(
                                decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: AppColors.mainOrangeColor
                                ),
                                height: 40,
                                width: 80,
                                padding: EdgeInsets.all(10),
                                child: Text("Next", style: TextStyle(color: AppColors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                                ),
                      )

                ),
            ],
          ),
        );
      }),
    );
  }
}
