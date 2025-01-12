import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/weather_page_controller.dart';

class WeatherPageView extends GetView<WeatherPageController> {
  const WeatherPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Tashkent',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.white),
          );
        } else if (controller.weatherData == null) {
          return const Center(
            child: Text(
              'Failed to load weather data.',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        } else {
          // Extract weather data
          final String currentTemp =
          controller.weatherData!['main']['temp'].toString();
          final String maxTemp =
          controller.weatherData!['main']['temp_max'].toString();
          final String minTemp =
          controller.weatherData!['main']['temp_min'].toString();

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF6E56E9), Color(0xFF2C2F64)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                    height: kToolbarHeight + 40), // AppBar height + padding
                // Weather icon and temperature
                GestureDetector(
                  onTap: (){
    controller.incrementPress();
                  },
                  child: Image.asset(
                    'assets/bigcloud.png', // Replace with your image
                    height: 120,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  '${currentTemp}°C', // Current temperature
                  style: const TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Precipitations',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Max: ${maxTemp}°C  Min: ${minTemp}°C', // Max/Min temperature
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                  ),
                ),
                const SizedBox(height: 30),
                // Hourly forecast (Mock data for now)
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: List.generate(5, (index) {
                              // Mock hourly forecast data
                              return Container(
                                width: 80,
                                margin:
                                const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${15 + index}:00', // Mock time
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Image.asset(
                                      'assets/cloud.png', // Replace with your image
                                      height: 60,
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      '${minTemp}°C', // Mock hourly temp
                                      style: const TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
