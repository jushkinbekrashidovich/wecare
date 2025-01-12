import 'package:get/get.dart';

class QuestionnaireController extends GetxController {
  // List of questions and answers
  final questions = [
    {
      "question": "Someone wouldn’t just be abusive for no reason - my cousin was probably only abusive because their partner did something to make them angry.",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. There is no excuse for abusive behavior. The person experiencing abuse is never to blame.",
      "incorrectMessage": "You are incorrect - this statement is false. There is no excuse for abusive behavior. The person experiencing abuse is never to blame.",
    },
    {
      "question": "“Arguing over and over again is normal in a relationship. They will probably sort it out.”",
      "correctMessage": "You are correct - this statement is false. While disagreements often happen in relationships, arguments that happen over and over again, or where one person has power and control over the other, can be a sign of abuse. ",
      "incorrectMessage": "You are incorrect - this statement is false. While disagreements often happen in relationships, arguments that happen over and over again, or where one person has power and control over the other, can be a sign of abuse.",
    },
    {
      "question": "Older people who have been together for ages probably aren’t abused, especially if one of them is a caregiver for the other.",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. Anyone can experience abuse, whatever their age. Being older can actually make it harder to get support. If the person being abusive is also your caregiver, it can be even harder. It’s important to look out for signs of domestic violence in people of any age. ",
      "incorrectMessage": "You are incorrect - this statement is false. Anyone can experience abuse, whatever their age. Being older can actually make it harder to get support. If the person being abusive is also your caregiver, it can be even harder. It’s important to look out for signs of domestic violence in people of any age.  ",
    },
    {
      "question": "My friend and their partner have good jobs and lots of money. But I recently noticed bruises on my friend’s arms and legs. It’s probably not domestic violence - that doesn’t really happen to people like them",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. Domestic violence can happen to anyone or be perpetrated by anyone, no matter how much money they have or whatever they do for work.",
      "incorrectMessage": "You are incorrect - this statement is false. Domestic violence can happen to anyone or be perpetrated by anyone, no matter how much money they have or whatever they do for work.",
    },
    {
      "question": "My brother only shouts at his partner because he has a drug and alcohol problem. He can’t control it",
      "answer": false,
      "correctMessage": "You are correct - this statement is false.Although alcohol and drugs can make an abusive situation worse, they are not an excuse for abusive behavior and do not cause someone to use power and control. Many people who use alcohol and drugs are not abusive.",
      "incorrectMessage": "You are incorrect - this statement is false. Although alcohol and drugs can make an abusive situation worse, they are not an excuse for abusive behavior and do not cause someone to use power and control. Many people who use alcohol and drugs are not abusive.",
    },
    {
      "question": "I often hear my friend say horrible things to their partner and it seems manipulative. But that’s not abuse – it’s just the way they are",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. Emotional abuse is a very real and harmful form of domestic violence. The person experiencing the abuse can be made to feel what is happening is their fault - this makes it very damaging to someone’s mental health.",
      "incorrectMessage": "You are incorrect - this statement is false. Emotional abuse is a very real and harmful form of domestic violence. The person experiencing the abuse can be made to feel what is happening is their fault - this makes it very damaging to someone’s mental health.",
    },
    {
      "question": "My sister and her partner are having a lot of problems with money. He is really stressed. He is always shouting at her and recently got so angry he hit her. It’s just the money worries though. It will stop when that’s fixed, so it's not abuse.",
      "answer": false,
      "correctMessage": "You are correct - this statement is false.Whatever the reason or however long it lasts, emotional or physical abuse should be taken very seriously. It is likely the abuse was happening in one way or another before the money worries started - it’s just that it is more noticeable now. Similarly, it is likely to carry on once the stress has passed.  ",
      "incorrectMessage": "You are incorrect - this statement is false. Whatever the reason or however long it lasts, emotional or physical abuse should be taken very seriously. It is likely the abuse was happening in one way or another before the money worries started - it’s just that it is more noticeable now. Similarly, it is likely to carry on once the stress has passed. ",
    },
    {
      "question": "A colleague’s new boyfriend has started turning up at work and also sending the colleague threatening messages on social media. She has asked him to stop doing this but he hasn’t stopped. They only just started dating – surely it isn’t domestic violence",
      "answer": false,
      "correctMessage": "You are correct - this statement is false.This is an example of stalking. It can affect someone’s life very negatively and make them feel very fearful. Stalking can also be a signal that someone will get violent, so it should be taken very seriously. .",
      "incorrectMessage": "You are incorrect - this statement is false.This is an example of stalking. It can affect someone’s life very negatively and make them feel very fearful. Stalking can also be a signal that someone will get violent, so it should be taken very seriously. ",
    },
    {
      "question": "My friend has broken up with someone I think might be abusive. But I shouldn’t say anything as couples always get back together in the end and it will be awkward and might hurt our friendship",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. Abuse can often make people feel confused and scared. Your support and understanding could help them make sense of what they are going through and give them the confidence to stay away.",
      "incorrectMessage": "You are incorrect - this statement is false. Abuse can often make people feel confused and scared. Your support and understanding could help them make sense of what they are going through and give them the confidence to stay away..",
    },
    {
      "question": "If they were really suffering from abuse in the relationship, they would just leave",
      "answer": false,
      "correctMessage": "You are correct - this statement is false. Leaving an abusive relationship is not an easy step. Many people stay because they believe the relationship has the potential to get better.",
      "incorrectMessage": "You are incorrect - this statement is false. Leaving an abusive relationship is not an easy step. Many people stay because they believe the relationship has the potential to get better.",
    },

    // Add more questions here
  ];

  var currentQuestionIndex = 0.obs;
  var selectedAnswer = Rx<bool?>(null);
  var feedback = ''.obs;

  // Method to check the user's answer
  void checkAnswer(bool answer) {
    final currentQuestion = questions[currentQuestionIndex.value];
    if (answer == currentQuestion["answer"]) {
      feedback.value = currentQuestion["correctMessage"] as String;
    } else {
      feedback.value = currentQuestion["incorrectMessage"] as String;
    }
  }

  // Move to the next question
  void nextQuestion() {
    if (currentQuestionIndex.value < questions.length - 1) {
      currentQuestionIndex.value++;
      selectedAnswer.value = null;
      feedback.value = '';
    } else {
      // All questions answered, navigate to a summary or end screen
      Get.snackbar('Quiz Completed', 'You have completed all questions!');
    }
  }
}
