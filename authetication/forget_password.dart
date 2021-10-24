import 'package:flutter/material.dart';
import 'package:lettutor_project/authetication/components/my_custom_textField.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement builds
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Text(
            "FORGET PASSRWORD",
            style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MyTextField.reusableTexFiled(
                    "Enter your email here",
                    45,
                    350,
                    false,
                    Icons.mail,
                  ), //MyTextfiled
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(350, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: const BorderSide(color: Colors.lightBlue)),
                      ),
                    ),
                    child: Text("VERIFIY YOUR EMAIL"),
                  ),
                ])));
  }
}
