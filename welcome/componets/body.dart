import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; // get the total height and width of the sceen
    return Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/4.png",
                width: size.width * 0.3,
                color: Colors.lightBlue,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: size.height * 0.4,
                ),
                SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(160, 40)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side:
                                  const BorderSide(color: Colors.lightBlue)))),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Up",
                      style: const TextStyle(color: Colors.blue),
                    ),
                    style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(Size(160, 35)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(color: Colors.blue))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ))
              ],
            ),
          ],
        ));
  }
}
