import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../const/theme/app_colors.dart';
import '../controllers/therapist_search_controller.dart';

class TherapistSearchView extends GetView<TherapistSearchController> {
  const TherapistSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Psychologists',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search by psychologist\'s name',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              onChanged: (value) {
                // You can filter or search logic here if needed
              },
            ),
            const SizedBox(height: 16),

            // List of doctors
            Expanded(
              child: Obx(() {
                if (controller.doctors.isEmpty) {
                  return const Center(
                    child: Text("No doctors available"),
                  );
                }
                return ListView.builder(
                  itemCount: controller.doctors.length,
                  itemBuilder: (context, index) {
                    final doctor = controller.doctors[index];
                    return DoctorCard(
                      name: doctor['name'],
                      specialty: doctor['specialty'],
                      experience: doctor['experience'],
                      rating: doctor['rating'],
                      consultationFee: doctor['consultationFee'],
                      available: doctor['available'],
                      profileImage: doctor['profileImage'],
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final String experience;
  final double rating;
  final int consultationFee;
  final bool available;
  final String profileImage;

  const DoctorCard({
    required this.name,
    required this.specialty,
    required this.experience,
    required this.rating,
    required this.consultationFee,
    required this.available,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/$profileImage', // Dynamically load the SVG based on the profileImage value
                  width: 60,
                  height: 60,
                ),

                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black
                        ),
                      ),
                      Text('$specialty ($experience)'),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(
                      rating.toString(),
                      style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.black),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.video_call,
                      color: available ? Colors.green : Colors.grey,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      available ? 'Available Now' : 'Not Available',
                      style: TextStyle(
                        color: available ? Colors.green : Colors.grey,
                      ),
                    ),
                  ],
                ),

                Text(
                  '\$$consultationFee',
                  style: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.black),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainOrangeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('Book Appointment', style: TextStyle(color: AppColors.white),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
