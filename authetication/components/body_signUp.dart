import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lettutor_project/authetication/components/my_custom_textField.dart';
import 'package:lettutor_project/authetication/components/social_sroll.dart';

import 'roundedRecBtn.dart';

class bodySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.34,
          ),
          SizedBox(height: 20),
          MyTextField.reusableTexFiled("Email", 120, 350, false, Icons.person),
          SizedBox(height: 10),
          MyTextField.reusableTexFiled("Password", 120, 350, true, Icons.lock),
          SizedBox(height: 10),
          MyTextField.reusableTexFiled(
              "Re-type password", 120, 350, true, Icons.lock),
          SizedBox(height: 20),
          rounded_rectangle_button(
            color: Colors.lightBlue,
            text: "SIGNUP",
            size: Size(350, 45),
            filled: Colors.blue,
          ),
          SizedBox(height: 10),
          OrDiver(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: socialLoginIcon(iconStr: 'assets/icons/facebook.svg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: socialLoginIcon(iconStr: 'assets/icons/google-plus.svg'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: socialLoginIcon(iconStr: 'assets/icons/twitter.svg'),
              )
            ],
          )
        ]));
  }
}

class OrDiver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        width: size.width * 0.8,
        child: Row(children: <Widget>[
          buildDiver(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("OR",
                style: TextStyle(
                    color: Colors.lightBlue, fontWeight: FontWeight.w600)),
          ),
          buildDiver(),
        ]));
  }

  Expanded buildDiver() {
    return Expanded(
      child: Divider(
        color: Colors.blue,
        height: 1.5,
      ),
    );
  }
}
