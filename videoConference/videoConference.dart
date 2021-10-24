import 'package:flutter/material.dart';

import 'components/countdownTimer.dart';
import 'components/toolbar.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class videoConference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(bottom: 200, left: 16, right: 16),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(children: <Widget>[
            SizedBox(height: 120),
            Container(
              height: 80,
              width: 200,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 0.5),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Colors.black.withOpacity(0.5)),
              child: Align(
                alignment: Alignment.center,
                child: SlideCountdownClock(
                  duration: Duration(
                    minutes: 2,
                  ),
                  separator: ':',
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Spacer(),
            toolbar(),
          ])),
    ));
  }
}
