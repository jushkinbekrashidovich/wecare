
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wecare/app/const/event_card.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

class MyTimeLineTile extends StatelessWidget {

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final eventCard;
  const MyTimeLineTile({super.key, required this.isFirst, required this.isLast, required this.isPast, required this.eventCard});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast? AppColors.completedLineColor : AppColors.upcomingLineColor),
        indicatorStyle: IndicatorStyle(
          width: 30,
          color: isPast?  AppColors.mainOrangeColor : AppColors.mainLighterOrangeColor,
          iconStyle: IconStyle(iconData: Icons.done,color: isPast? Colors.white: AppColors.upcomingIconColor)
        ),

        endChild: EventCard(child: eventCard,isPast: isPast,),
      ),
    );
  }
}
