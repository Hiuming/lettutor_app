import 'package:flutter/material.dart';
import 'dart:async';

class countdownTimer extends StatelessWidget {
  countdownTimer({Key? key, this.time}) : super(key: key);
  Timer? time;
  int timeShow = 60;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container();
  }

  void startTime() {
    this.time = Timer.periodic(Duration(seconds: 1), (_) {
      timeShow--;
    });
  }
}
