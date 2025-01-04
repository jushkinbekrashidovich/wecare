import 'package:flutter/material.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final child;
  const EventCard({super.key, required this.isPast, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: isPast? AppColors.completedIndicatorBackground :AppColors.upcomingIndicatorBackground,
        borderRadius: BorderRadius.circular(6)
      ),
      child:child,

    );
  }
}
