import 'package:flutter/material.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

class AbuseFormsQA extends StatelessWidget {
  const AbuseFormsQA({super.key, required this.title, required this.description});
  final title;
  final description;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      child: ExpansionTile(
        //backgroundColor: AppColors.white,
        iconColor: AppColors.mainOrangeColor,
        collapsedIconColor: AppColors.mainOrangeColor,
        title: Text(
          title,
          style: TextStyle(fontSize: 18, color: AppColors.mainOrangeColor),
        ),
        children: [
          ListTile(
            iconColor: AppColors.mainOrangeColor,
            title: Text(
              description,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}