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
    return Column(
      children: <Widget>[
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
        SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
                padding: EdgeInsets.only(top: 2), child: teacherListItems())),
      ],
    );
  }
}
