import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:seconds_countdown_timer/seconds_countdown_timer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
//    option card widget

class OptionCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;
  OptionCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.onTap,
    this.isSelected = false,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,width: 400,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white, // Background color if needed
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent, // Blue border if selected
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.black),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: Colors.grey[600],

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//    countdown_timer widget
class countimer extends StatelessWidget {
  Widget build(BuildContext context) {
    return Center(
      child: SecondsCountdownTimer(
        endTime: 60,
        startDate: DateTime.now(),
        widgetBuilder: (_, time) {
          return Text(" ${time?.min ?? 0}${time?.min ?? 0}:${time?.sec ?? 0}");

        },
      ),
    );
  }
}

class CustomStepProgress extends StatelessWidget {
  final int totalSteps;
  final int currentStep;
  final double selectedSize;
  final double unselectedSize;
  final Color selectedColor;
  final Color unselectedColor;
  final padding;
  const CustomStepProgress({
    Key? key,
    required this.totalSteps,
    required this.currentStep,
    this.selectedSize = 8,
    this.unselectedSize = 7,
    this.selectedColor = const Color(0xFF3C97AF),
    this.unselectedColor = const Color(0xFFBFBFBF),
    this.padding =4,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: totalSteps,
      currentStep: currentStep,
      selectedSize: selectedSize,
      unselectedSize: unselectedSize,
      selectedColor: selectedColor,
      unselectedColor: unselectedColor,
      roundedEdges: Radius.circular(10),
      padding: 4,
    );
  }
}