import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class socialLoginIcon extends StatelessWidget {
  final String iconStr;
  //final Function press;
  const socialLoginIcon({
    Key? key,
    required this.iconStr,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.lightBlue,
        ),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(
        iconStr,
        height: 20,
        width: 20,
      ),
    );
  }
}
