
import 'dart:math';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wecare/app/const/consts.dart';

class HomeController extends GetxController {

  RxInt myFlowers = 0.obs;

  final List<String> quotes = [
    "Your strength is not defined by your past, but by your courage to keep moving forward.",
    "You are worthy of love, respect, and happiness. Never let anyone tell you otherwise.",
    "The scars you carry are not signs of weakness, but proof of your resilience.",
    "You are not defined by what has happened to you; you are defined by how you rise above it.",
    "In every storm, you have found your way. You are more powerful than you realize.",
    "Even in the darkest moments, your light still shines. Keep going, you are not alone.",
    "Your voice is powerful, and your story is one of strength, not silence.",
    "You are a survivor, not a victim. And with each step, you reclaim your life.",
    "Every day is a new opportunity to rebuild, to rise, and to remember that you are enough.",
    "You are deserving of peace, joy, and love. Never forget that your worth is immeasurable.",
  ];


  // Selected random quote
  var selectedQuote = 'You are worthy of love, respect, and happiness.'.obs;

  @override
  void onInit() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myFlowers.value = prefs.get('myFlowers') as int;

    // Ensure the quotes list is not empty and select a random quote
    if (quotes.isNotEmpty) {
      selectedQuote.value = quotes[Random().nextInt(quotes.length)];
    } else {
      selectedQuote.value = "You are worthy of love, respect, and happiness."; // Default quote if the list is empty
    }
    super.onInit();
  }




  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
