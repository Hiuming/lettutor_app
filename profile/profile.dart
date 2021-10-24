import 'package:flutter/material.dart';
import 'package:lettutor_project/profile/components/body_profile.dart';

class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
        appBar: AppBar(
            title: Text("Profile"),
            backgroundColor: Colors.lightBlue,
            elevation: 0.0,
            actions: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text("Edit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700)),
              )
            ]),
        body: Body_profile());
  }
}
