import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/theme/app_colors.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/blogs_controller.dart';

class BlogsView extends GetView<BlogsController> {
  const BlogsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Support Library', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.blogs.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.blogs.length,
          itemBuilder: (context, index) {
            final blog = controller.blogs[index];
            return GestureDetector(
              onTap: (){
               var args = {'blogTitle':blog.title, 'blogContent':blog.subtitle};
                Get.toNamed(Routes.BLOG_POST_DETAILS, arguments: args);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.grey, width: 0.2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(blog.author, style: const TextStyle(fontSize: 13, color: AppColors.mainLightText)),
                        Text(
                          blog.date,
                          style: const TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    const Divider(),
                    Text(
                      blog.title,
                      style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold,color: AppColors.mainLightText),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      blog.subtitle,
                      style: const TextStyle(fontSize: 13,color: AppColors.mainLightText),
                      overflow: TextOverflow.fade,
                      maxLines: 7,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
