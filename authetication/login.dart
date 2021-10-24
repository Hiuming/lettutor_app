import 'package:flutter/material.dart';
import 'package:lettutor_project/authetication/components/body_login.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement builds
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "LOGIN",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: bodyLogin());
  }
}
