import 'dart:async';

import 'package:capsule/src/components/custom_text.dart';
import 'package:capsule/src/core/constants/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../core/constants/font_weight.dart';
import '../../../core/constants/palette.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {

  double _progress = 1.0; // Ranges from 0.0 to 1.0
  int _timeInSeconds = 5; // Timer duration in seconds
  Timer? _timer;
  int _currentSeconds = 0;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_currentSeconds < _timeInSeconds) {
        setState(() {
          _currentSeconds++;
          _progress = 1 - (_currentSeconds / _timeInSeconds);
        });
      } else {
        _timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
                radius: radius_100,
              percent: _progress,
              startAngle: 90,
              backgroundColor: AppColors.pinkGrade2,
              progressColor: AppColors.blueGrade2,
              circularStrokeCap: CircularStrokeCap.round,
              center: CustomText(
                  text: '${_timeInSeconds - _currentSeconds}',
                  color1: AppColors.pinkGrade2,
                  fontWeight: fontWeight900,
                  fontSize: 100),
            ),
          ],
        ),
      ),
    );
  }
}
