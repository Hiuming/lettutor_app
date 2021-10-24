import 'package:flutter/material.dart';

class rounded_rectangle_button extends StatelessWidget {
  const rounded_rectangle_button({
    Key? key,
    required this.text,
    required this.size,
    required this.color,
    required this.filled,
  }) : super(key: key);
  final String text;
  final Size size;
  final Color color;
  final Color filled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(size),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: const BorderSide(color: Colors.lightBlue)),
        ),
      ),
      child: Text("SIGNUP"),
    );
  }
}
