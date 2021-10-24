import 'package:flutter/material.dart';

class toolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          border: Border.all(color: Colors.black, width: 0.2),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 26, right: 16),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.headphones,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
