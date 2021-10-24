// ignore: file_names
// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lettutor_project/authetication/components/my_custom_textField.dart';

class bodyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'assets/icons/login.svg',
                height: size.height * 0.3,
              ),
              SizedBox(height: 20),
              MyTextField.reusableTexFiled(
                  "Username", 120, 300, false, Icons.person),
              SizedBox(height: 10),
              MyTextField.reusableTexFiled(
                  "Password", 120, 300, true, Icons.lock),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  fixedSize: MaterialStateProperty.all(Size(300, 45)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: const BorderSide(color: Colors.lightBlue)),
                  ),
                ),
                child: Text("Login"),
              ),
              SizedBox(height: 10),
              Text(
                "Don't have an account? Sign Up",
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
              )
            ]));
  }
}
