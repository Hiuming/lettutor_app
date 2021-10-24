import 'package:flutter/material.dart';
import 'package:lettutor_project/teacher-list/components/cellBtn.dart';

class commentCell extends StatelessWidget {
  const commentCell({
    Key? key,
    required this.image,
    this.comment,
    required this.date,
  }) : super(key: key);
  final String image;
  final String? comment;
  final String date;
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
          Row(children: <Widget>[
            /// ----- Circle Image ---- ///
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
            //------ End -----//

            //---Stack button, text ---//
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Stack(
                children: <Widget>[
                  Text("Tony Stark"),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(children: <Widget>[
                        Text(this.comment != null ? this.comment! : "",
                            style: TextStyle(fontWeight: FontWeight.w200)),
                        SizedBox(width: 10),
                      ])),
                ],
              ),
            ),
            Spacer(),
            Padding(
                padding: EdgeInsets.only(right: 4.0),
                child: Row(children: <Widget>[
                  for (int i = 0; i < 5; i++) ...[
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    )
                  ]
                ])),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(alignment: Alignment.bottomRight, child: Text(date)),
          )
        ]));
  }
}
