import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

class TherapistSearchController extends GetxController {
  // Observable list of doctors
  var doctors = <Map<String, dynamic>>[].obs;

  @override
  void onInit() {
    super.onInit();


    fetchDoctors();
  }

  void fetchDoctors() {
    // Dummy data for doctors
    doctors.value = [
      {
        "name": "Dr.Arlene Mccoy",
        "specialty": "Therapist",
        "experience": "5 years Exp",
        "rating": 4.8,
        "consultationFee": 20,
        "available": true,
        "profileImage": "prof1.png",
      },
      {
        "name": "Dr.Kevon Lane",
        "specialty": "Psychologist",
        "experience": "3 years Exp",
        "rating": 4.9,
        "consultationFee": 40,
        "available": true,
        "profileImage": "prof2.png",
      },
      {
        "name": "Dr.Sophia",
        "specialty": "Psychologist",
        "experience": "3 years Exp",
        "rating": 4.9,
        "consultationFee": 10,
        "available": true,
        "profileImage": "prof3.png",
      },
      {
        "name": "Dr.Audrey",
        "specialty": "Psychologist",
        "experience": "1 years Exp",
        "rating": 4.9,
        "consultationFee": 9,
        "available": true,
        "profileImage": "prof4.png",
      },
      {
        "name": "Dr.Evelyn",
        "specialty": "Psychologist",
        "experience": "10 years Exp",
        "rating": 4.9,
        "consultationFee": 50,
        "available": true,
        "profileImage": "prof5.png",
      },
    ];
  }

  @override
  void onReady() {
    Future.delayed(Duration.zero, () {
      Get.defaultDialog(
        title: "Notice!",
        middleText: "This is the test version. We're adding local psychologists to the app in the next update.\n Stay tuned!",
        textConfirm: "OK",
        onConfirm: () {
          Get.back(); // Close the dialog
        },
        titleStyle: TextStyle(color: AppColors.mainOrangeColor)
      );
    });
    super.onReady();
  }
}
