import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cellBtn.dart';

class courseBox extends StatelessWidget {
  const courseBox({
    Key? key,
    required this.imgSrc,
    required this.title,
    required this.detail,
  }) : super(key: key);
  final String imgSrc;
  final String title;
  final String detail;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3), //color of shadow
              spreadRadius: 3, //spread radius
              blurRadius: 5, // blur radius
              offset: Offset(0, 2), // changes position of shadow
              //first paramerter of offset is left-right
              //second parameter is top to down
            ),
            //you can set more BoxShadow() here
          ],
        ),
        child: Column(children: <Widget>[
          SizedBox(child: SvgPicture.asset(imgSrc, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, right: 8.0, bottom: 12.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                detail,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 8.0, left: 8.0, right: 8.0, bottom: 12.0),
            child: in_cell_btn(
              color: Colors.blue,
              size: Size(size.width * 0.6, 40),
              fill: Colors.white,
              text: Text("Explore",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.blue)),
            ),
          )
        ]));
  }
}
