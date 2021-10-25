import 'package:flutter/material.dart';
import 'package:lettutor_project/teacher-list/components/cellBtn.dart';
import 'package:lettutor_project/teacher-list/components/teacher_list_items.dart';

class homeHeader extends StatelessWidget {
  const homeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Padding(
        padding: EdgeInsets.only(top: size.height.ceilToDouble() / 5),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: teacherCellHeader(
                  image: 'assets/images/userProfile.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: teacherCellHeader(
                  image: 'assets/images/userProfile.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: teacherCellHeader(
                  image: 'assets/images/userProfile.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: teacherCellHeader(
                  image: 'assets/images/userProfile.jpg',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                child: teacherCellHeader(
                  image: 'assets/images/userProfile.jpg',
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
          height: size.height / 5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              Text(
                "Total lesson time is 2 hours 46 minutes",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Upcoming lessons",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Wed, 06 Oct 21 06:30 - 06:55 ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              in_cell_btn(
                  text: Text(
                    "Enter lesson room",
                    style: TextStyle(color: Colors.blue),
                  ),
                  color: Colors.white,
                  size: Size(200, 40),
                  fill: Colors.white)
            ],
          )),
    ]);
  }
}
