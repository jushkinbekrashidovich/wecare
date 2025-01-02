import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import '../../../../const/theme/app_colors.dart';
import '../controllers/community_chat_details_controller.dart';

class CommunityChatDetailsView extends GetView<CommunityChatDetailsController> {
  const CommunityChatDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments".tr),
        centerTitle: true,
        elevation: 1,
      ),
      body: Obx(
            () => controller.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : Column(
          children: [
            // Post Details
            Container(
              padding: EdgeInsets.only(left: 12, right: 12, top: 15, bottom: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromARGB(255, 253, 253, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        child: Center(
                          child: Icon(Icons.person_2),
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        controller.postDetails["author"] ?? "Author",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    controller.postDetails["content"] ?? "Content",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13.6,
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar,
                        color: AppColors.black,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        DateFormat('yyyy-MM-dd').format(DateTime.parse(controller.postDetails["dateAdded"])),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),

            // Comments List
            Expanded(
              child: controller.comments.isEmpty
                  ? Center(child: Text("No comments yet."))
                  : ListView.builder(
                itemCount: controller.comments.length,
                itemBuilder: (context, index) {
                  final comment = controller.comments[index];
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 21,
                          backgroundColor: AppColors.secondaryGreyTextColor,
                          child: Text(
                            comment["author"]?.substring(0, 1) ?? "A",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: 190,
                          padding: EdgeInsets.all(9),
                          margin: EdgeInsets.only(right: 10, left: 3, top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                comment["author"] ?? "Username",
                                style: TextStyle(
                                  color: AppColors.secondaryGreyTextColor,
                                  fontSize: 11.5,
                                ),
                              ),
                              SizedBox(height: 3),
                              Text(
                                comment["content"] ?? "Comment content",
                                style: TextStyle(
                                  fontSize: 14.5,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                DateFormat('yyyy-MM-dd').format(DateTime.parse(comment["dateAdded"]),),
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.black,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Comment Input
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(

                    child: SizedBox(
                      height: 47,
                      child: TextFormField(
                        focusNode: controller.focusNode1,
                        controller: controller.commentController,
                        maxLines: 4,
                        cursorColor: AppColors.black,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
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
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: controller.addComment,
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.mainOrangeColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
