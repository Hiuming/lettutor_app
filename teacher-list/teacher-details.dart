import 'package:flutter/material.dart';

import 'components/body_teacher_detail.dart';

class teacherDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return SafeArea(
      left: false,
      right: false,
      top: false,
      bottom: false,
      child: Scaffold(body: BodyTeacherDetails()),
    );
  }
}
