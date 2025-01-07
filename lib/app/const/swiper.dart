import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class SwipeToStartButton extends StatelessWidget {
  final Function onSwipe;
  final String text;

  const SwipeToStartButton({super.key, required this.onSwipe, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: SliderButton(
          label: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
          icon: Center(
            child: Icon(
              Icons.arrow_forward,
              color: Colors.white,
              size: 24.0,
            ),
          ),
          action: ()async{
           await onSwipe();
          },
          width: MediaQuery.of(context).size.width * 0.7, // Dynamic width
          height: 60, // Compact height
          radius: 12, // Slightly rounded corners
          buttonColor: const Color(0xffFF5722), // Vibrant orange for the button
          backgroundColor: const Color(0xff455A64), // Dark grey for contrast
          highlightedColor: const Color(0xffFFC107), // Yellow when highlighted
          baseColor: const Color(0xffFF7043), // Base color for button animation
        ),
      ),
    );
  }
}
