import 'package:flutter/material.dart';

import 'cellBtn.dart';

class teacherListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      padding: EdgeInsets.only(top: 50),
      physics: ClampingScrollPhysics(),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: teacherCellHeader(
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: teacherCellHeader(
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: teacherCellHeader(
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: teacherCellHeader(
            image: 'assets/images/userProfile.jpg',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: teacherCellHeader(
            image: 'assets/images/userProfile.jpg',
          ),
        ),
      ],
    );
  }
}

class teacherCellHeader extends StatelessWidget {
  const teacherCellHeader({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(this.image),
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Stack(
                children: <Widget>[
                  Text("Tony Stack"),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: in_cell_btn(
                        fill: Colors.white,
                        text: Text(
                          "English",
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        color: Colors.blue,
                        size: Size(80, 20)),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(children: <Widget>[
                  Text("5.00",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w600)),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                ])),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "Hi, My name is ... Im an experienced English teacher from US. I would like to share my enthusiam with the learners in this platform"),
        )
      ]),
    );
  }
}
