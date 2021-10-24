// ignore: file_names
import 'package:flutter/material.dart';

class in_cell_btn extends StatelessWidget {
  const in_cell_btn({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
    required this.fill,
  }) : super(key: key);
  final Text text;
  final Color color;
  final Size size;
  final Color fill;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: fill,
          minimumSize: size,
          maximumSize: size,
          side: BorderSide(width: 1, color: color),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: text);
  }
}
