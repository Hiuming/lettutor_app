import 'package:flutter/material.dart';
import 'package:lettutor_project/teacher-list/components/cellBtn.dart';

import 'home_header.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            )),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: homeHeader(size: size),
    );
  }
}
