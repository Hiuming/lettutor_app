import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lettutor_project/authetication/components/roundedRecBtn.dart';
import 'package:lettutor_project/teacher-list/components/cellBtn.dart';

class infoCell extends StatelessWidget {
  const infoCell({
    Key? key,
    required this.image,
    required this.name,
    required this.nation,
  }) : super(key: key);
  final String image;
  final String name;
  final String nation;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              /// ----- Circle Image ---- ///
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12, bottom: 8),
                child: Container(
                    height: 80,
                    width: 80,
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
                    Text(this.name,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        )),
                    Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: <Widget>[
                            Text(this.nation),
                            Text(
                              "Teacher",
                              style: TextStyle(fontWeight: FontWeight.w200),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 16, bottom: 8),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                        Icon(Icons.star, color: Colors.yellow),
                      ],
                    ),
                    Icon(CupertinoIcons.heart, color: Colors.red, size: 30)
                  ],
                ),
              )
            ]),
            Align(
              alignment: Alignment.center,
              child: in_cell_btn(
                  fill: Colors.blue,
                  text: Text(
                    "Booking",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.blue,
                  size: Size(350, 40)),
            ),
          ],
        ));
  }
}
