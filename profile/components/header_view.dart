import 'package:flutter/material.dart';

class header extends StatelessWidget {
  const header(
      {Key? key, required this.name, required this.email, required this.image})
      : super(key: key);
  final String name, email, image;

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
          height: 240,
          child: Stack(children: <Widget>[
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 150,
                color: Colors.lightBlue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Column(children: <Widget>[
                  Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 6),
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(this.image),
                          ))),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      this.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(this.email,
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 13,
                          fontWeight: FontWeight.w400)),
                ]),
              ),
            ),
          ]))
    ]);
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
