import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';

import '../controllers/support_centre_controller.dart';

class SupportCentreView extends GetView<SupportCentreController> {
  const SupportCentreView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                '“Your safety and happiness matter.\nReach out – we are here for you.”',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    _buildHelpCard(
                      title: 'Psychological Help',
                      iconPath: 'assets/psycho.svg',
                      ontap: ()
                      async {
                        final Uri url = Uri.parse("https://t.me/Ayollar_himoyasi_bot");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {

                          throw 'Could not launch';
                        }

                      },
                    ),
                    _buildHelpCard(
                      title: 'Legal Assistance',
                      iconPath: 'assets/legal.svg',
                      ontap: ()
                      async {
                        final Uri url = Uri.parse("https://t.me/Ayollar_himoyasi_bot");
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                          // Better error handling

                          throw 'Could not launch';
                        }

                      },
                    ),
                    _buildHelpCard(
                      title: 'Hotline',
                      iconPath: 'assets/hotline.svg',
                      ontap: ()
                      async {
                       Get.toNamed(Routes.HOTLINE_NUMBERS);
                      },
                    ),
                    _buildHelpCard(
                      title: 'Crisis Assistance',
                      iconPath: 'assets/crisis.svg',

                      ontap: ()
                        async {
                          final Uri url = Uri.parse("https://t.me/Ayollar_himoyasi_bot");
                          if (await canLaunchUrl(url)) {
                        await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                        // Better error handling

                        throw 'Could not launch';
                        }

                      },
                    ),
                    GestureDetector(
                      onTap: () {
                       Get.toNamed(Routes.THERAPIST_SEARCH);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFF7F2),
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(color: AppColors.mainOrangeColor, width: 0.1),
                        ),
                        child: Stack(
                          children: [
                            // Column for therapist icon and text
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 63,
                                    width: 63,
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/svg/therapist.svg",
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  Text(
                                    "Therapist",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black87,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Positioned pro icon at the top-right corner
                            Positioned(
                              top: 8,
                              right: 8,
                              child: Icon(
                                Icons.monetization_on,  // Replace with your 'pro' icon, e.g., Icon or SvgPicture
                                size: 25.0,
                                color: AppColors.mainOrangeColor, // Adjust color as needed
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHelpCard({required String title, required String iconPath, required Function ontap}) {
    return GestureDetector(
      onTap: () {
        ontap();
      },

      child: Container(

        decoration: BoxDecoration(
          color: const Color(0xFFFFF7F2),
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(color: AppColors.mainOrangeColor, width: 0.1)

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 53,
              width: 53,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
              color: AppColors.white,
                borderRadius: BorderRadius.circular(8)
                  
              ),
              child: SvgPicture.asset(
                iconPath,

              ),
            ),
            const SizedBox(height: 12),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
