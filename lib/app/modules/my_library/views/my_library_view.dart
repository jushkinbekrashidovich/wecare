import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../../../const/theme/app_colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/my_library_controller.dart';

class MyLibraryView extends GetView<MyLibraryController> {
  const MyLibraryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Understand abuse", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Text(
                '“Recognising the many ways that domestic violence can happen can feel overwhelming and confusing. These guides provide simple information to help you better understand some common abusive behaviours, as well as the harmful myths that can surround abuse.”',
                textAlign: TextAlign.center,
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
                      title: 'Forms of Abuse',
                      iconPath: 'assets/psycho.svg',
                      ontap: ()
                       {
                        Get.toNamed(Routes.ABUSE_FORMS);

                      },
                    ),
                    _buildHelpCard(
                      title: 'Legal Assistance',
                      iconPath: 'assets/legal.svg',
                      ontap: ()
                       {


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
                       {

                        }


                    ),
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
