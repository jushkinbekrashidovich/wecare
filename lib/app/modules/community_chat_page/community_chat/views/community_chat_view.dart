import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:wecare/app/const/theme/app_colors.dart';
import 'package:wecare/app/routes/app_pages.dart';

import '../controllers/community_chat_controller.dart';

class CommunityChatView extends GetView<CommunityChatController> {
  const CommunityChatView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CommunityChatView'),
        centerTitle: true,
      ),
      body: Column(
        children: [
      Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 6),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.white,
        border:
        Border.all(color: AppColors.black, width: 0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 21,
                child: Center(
                  child: Icon(Icons.person_2),
                ),
              ),


              SizedBox(width: 7),
              Expanded(
                child: Text(
                  "post.author!.firstName.toString()",

                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 7,
          ),
          SizedBox(
            child: Text(
              "post.description.toString()",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 4,
            ),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            children: [
              Icon(
                CupertinoIcons.calendar,
                color: AppColors.black,
                size: 16,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "controller.formattedDate(post.createdDate),",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),]),


      floatingActionButton: FloatingActionButton(

        elevation: 0,
          onPressed: (){
          Get.toNamed(Routes.ADD_POST);
          },
        child: Icon(Icons.add, color: AppColors.white,),
        backgroundColor: AppColors.mainOrangeColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
