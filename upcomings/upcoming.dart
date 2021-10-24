import 'package:flutter/material.dart';
import 'package:lettutor_project/upcomings/components/body_upcoming.dart';

class upComing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Upcomings",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: body_upComing());
  }
}
