import 'package:flutter/material.dart';

class profile_Menu_Item extends StatelessWidget {
  const profile_Menu_Item({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 12, right: 12),
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
      child: Padding(
          padding: EdgeInsets.only(top: 15, left: 10, bottom: 15),
          child: Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 10),
              Text(title),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          )),
    );
  }
}
