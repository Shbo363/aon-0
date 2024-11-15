

import 'package:flutter/cupertino.dart';
import 'package:seconds_countdown_timer/seconds_countdown_timer.dart';

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