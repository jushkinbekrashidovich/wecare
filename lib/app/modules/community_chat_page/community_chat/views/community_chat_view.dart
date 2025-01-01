import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';
import '../controllers/community_chat_controller.dart';

class CommunityChatView extends GetView<CommunityChatController> {
  const CommunityChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 14),
        child: Column(
          children: [
            // Obx listens for updates to the posts list
            Obx(() {
              if (controller.posts.value.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: controller.posts.value.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot post = controller.posts.value[index];
                    String author = post['author'];
                    String content = post['content'];
                    String dateAdded = post['dateAdded']; // Directly use the dateAdded string

                    return GestureDetector(
                      onTap: () {
                        // Handle tap if needed
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 10, right: 10, top: 6),
                        margin: EdgeInsets.only(bottom: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.white,
                          border: Border.all(color: AppColors.black, width: 0.1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 6),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  child: Center(
                                    child: Icon(Icons.person_2),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Expanded(
                                  child: Text(
                                    author,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 7),
                            SizedBox(
                              child: Text(
                                content,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                                maxLines: 4,
                              ),
                            ),
                            SizedBox(height: 19),
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  color: AppColors.black,
                                  size: 16,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  DateFormat('yyyy-MM-dd').format(DateTime.parse(dateAdded)),
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          Get.toNamed(Routes.ADD_POST);
        },
        child: Icon(
          Icons.add,
          color: AppColors.white,
        ),
        backgroundColor: AppColors.mainOrangeColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
