import 'package:flutter/cupertino.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
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