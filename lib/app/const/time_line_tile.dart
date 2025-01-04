
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:wecare/app/const/event_card.dart';
import 'package:wecare/app/const/theme/app_colors.dart';

class MyTimeLineTile extends StatelessWidget {

  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String textcontent;
  const MyTimeLineTile({super.key, required this.isFirst, required this.isLast, required this.isPast, required this.textcontent});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(color: isPast? AppColors.completedLineColor : AppColors.upcomingLineColor),
        indicatorStyle: IndicatorStyle(
          width: 30,
          color: isPast?  AppColors.mainOrangeColor : AppColors.mainLighterOrangeColor,
          iconStyle: IconStyle(iconData: Icons.done,color: isPast? Colors.white: AppColors.upcomingIconColor)
        ),

        endChild: EventCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(textcontent, style: TextStyle(color:isPast? AppColors.white:Colors.blueGrey, fontWeight: FontWeight.w800, fontSize: 12,),maxLines: 4,overflow: TextOverflow.ellipsis, textAlign: TextAlign.start,)),
           Icon(Icons.open_in_new, color: Colors.green,weight: 2,),
          ],
        ),isPast: isPast,),
      ),
    );
  }
}
