import 'package:flutter/material.dart';

import 'upcoming_cell.dart';

class body_upComing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.only(top: 4),
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: upcomingCell(
            two_button: true,
            image: 'assets/images/userProfile.jpg',
          ),
        ),
      ],
    );
  }
}
