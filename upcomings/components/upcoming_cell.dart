import 'package:flutter/material.dart';
import 'package:lettutor_project/authetication/components/roundedRecBtn.dart';
import 'package:lettutor_project/teacher-list/components/cellBtn.dart';

class upcomingCell extends StatelessWidget {
  const upcomingCell({
    Key? key,
    required this.image,
    required this.two_button,
  }) : super(key: key);
  final String image;
  final bool two_button;

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
                      child: Row(
                        children: <Widget>[
                          Text("2021-01-01",
                              style: TextStyle(fontWeight: FontWeight.w600)),
                          SizedBox(width: 10),
                          timeBox(
                            time: "06:30",
                            myColor: Colors.orange,
                          ),
                          Text("  -  "),
                          timeBox(time: "09:30", myColor: Colors.blue),
                        ],
                      )),
                ],
              ),
            ),
          ]),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0, bottom: 8.0),
                child: in_cell_btn(
                    fill: Colors.white,
                    text: Text(
                      "Cancel",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    color: Colors.red,
                    size: Size(80, 40)),
              ),
              Spacer(),
              if (two_button) ...[externalBtn()],
            ],
          )
        ]));
  }
}

class externalBtn extends StatelessWidget {
  const externalBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0, bottom: 8.0),
      child: in_cell_btn(
          fill: Colors.white,
          text: Text(
            "Go to meeting",
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          color: Colors.blue,
          size: Size(150, 40)),
    );
  }
}

class timeBox extends StatelessWidget {
  const timeBox({
    Key? key,
    required this.time,
    required this.myColor,
  }) : super(key: key);
  final String time;
  final Color myColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: myColor),
        color: myColor.withOpacity(0.2),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Text(
          time,
          style: TextStyle(color: myColor),
        ),
      ),
    );
  }
}
