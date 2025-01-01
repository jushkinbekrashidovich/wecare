import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../const/theme/app_colors.dart';
import '../controllers/add_post_controller.dart';

class AddPostView extends GetView<AddPostController> {
  const AddPostView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.focusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Add post"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 20),
          child: ListView(
            children: [
              const Text(
                '“Feel free to share your questions or stories. Your post will remain anonymous, and no personal information will be shared!”',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                  fontStyle: FontStyle.italic,
                ),
              ),

              SizedBox(height: 25),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Text".tr,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 6),
                  SizedBox(
                    height: 300,
                    child: TextFormField(

                      focusNode: controller.focusNode,
                      controller: controller.textEditingController,
                      maxLines: 10,
                      cursorColor: AppColors.black,
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lighterGrey,
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lighterGrey,
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.lighterGrey,
                            width: 0.4,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(

                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Center(child: Text("Post", style: TextStyle(color: AppColors.white, fontSize: 18),textAlign: TextAlign.center,)),
                height: 47,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.mainOrangeColor
                ),
              ),
            ],
          ))));



  }
}
