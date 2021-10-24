import 'package:flutter/material.dart';
import 'package:lettutor_project/upcomings/components/upcoming_cell.dart';

class informationCell extends StatelessWidget {
  const informationCell(
      {Key? key, required this.title, this.text, this.Major, this.customWidget})
      : super(key: key);

  final String title;
  final String? text;
  final List<String>? Major;
  final Widget? customWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            )),
        SizedBox(height: 10),
        if (this.Major != null) ...[
          Align(
            alignment: Alignment.topLeft,
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (var i in this.Major!) ...[
                      timeBox(time: i, myColor: Colors.blue),
                      SizedBox(width: 8)
                    ]
                  ],
                )),
          )
        ],
        if (this.text != null) ...[
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                text!,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
        if (this.customWidget != null) ...[this.customWidget!]
      ],
    );
  }
}
