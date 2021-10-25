import 'package:flutter/material.dart';
import 'components/feedbackBody.dart';

class feedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Feedbacks",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
          toolbarHeight: 100,
        ),
        body: Body());
  }
}
