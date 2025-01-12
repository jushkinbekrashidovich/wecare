import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:wecare/app/routes/app_pages.dart';

class WeatherPageController extends GetxController {
  var isLoading = true.obs;
  Map<String, dynamic>? weatherData;

  var pressCount = 0.obs;


  @override
  void onInit() {
    super.onInit();
    fetchWeather();
  }
  void incrementPress() {
    pressCount++;
    if (pressCount.value == 4) {
      // Navigate to the next page when the button is pressed 4 times
      Get.offAllNamed(Routes.MAIN);
    }
  }

  Future<void> fetchWeather() async {
    const String apiKey = "6d7320f1b62a3a5ff404a8dd89a33e58"; // Replace with your API key
    const String city = "Tashkent";
    const String url =
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        weatherData = json.decode(response.body);
      } else {
        Get.snackbar("Error", "Failed to load weather data");
      }
    } catch (e) {
      Get.snackbar("Error", "An error occurred: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
