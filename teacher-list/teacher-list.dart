import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lettutor_project/teacher-list/components/my_search_bar.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import 'components/teacher_list_items.dart';

class teacherList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: size.height * 0.05,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Tutors",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Stack(children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 50), child: teacherListItems()),
          Positioned(
            child: Container(
              color: Colors.white,
              height: size.height * 0.1,
              width: double.infinity,
              child: FloatAppBar(),
            ),
          ),
        ]));
  }
}
