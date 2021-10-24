import 'package:flutter/material.dart';
import 'package:lettutor_project/authetication/components/body_signUp.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement builds
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "SIGN UP",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: bodySignUp());
  }
}
