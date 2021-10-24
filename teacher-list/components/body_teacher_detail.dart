import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lettutor_project/teacher-list/components/teacher-detail_course.dart';
import 'package:lettutor_project/teacher-list/components/teacher_detail_cell/cell.dart';
import 'package:lettutor_project/teacher-list/components/teacher_detail_cell/commentCell.dart';
import 'package:lettutor_project/teacher-list/components/teacher_detail_cell/infomation_cell.dart';
import 'package:lettutor_project/upcomings/components/upcoming_cell.dart';

import 'cellBtn.dart';

class BodyTeacherDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //--- put video here ---
          Image.network(
            'https://allimages.sgp1.digitaloceanspaces.com/wikilaptopcom/2021/01/1611165794_Hinh-anh-hoa-canh-buom-dep-nhat.jpg',
            fit: BoxFit.cover,
          ),
          infoCell(
            image: 'assets/images/userProfile.jpg',
            name: "Tony Stark",
            nation: "Vietnam",
          ),
          SizedBox(height: 10),
          Row(children: <Widget>[
            SizedBox(width: size.width * 0.2),
            buttonBottomCell(
                icon: Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.blue,
                ),
                text: Text("Message",
                    style: TextStyle(
                      color: Colors.blue,
                    ))),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 80),
              child: buttonBottomCell(
                  icon: Icon(
                    Icons.info,
                    size: 30,
                    color: Colors.blue,
                  ),
                  text: Text("Report",
                      style: TextStyle(
                        color: Colors.blue,
                      ))),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              child: Text(
                  "I am passionate about running and fitness, I often compete in trail/mountain running events and I love pushing myself. I am training to one day take part in ultra-endurance events. I also enjoy watching rugby on the weekends, reading and watching podcasts on Youtube. My most memorable life experience would be living in and traveling around Southeast Asia.",
                  style: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
              title: "Languages",
              Major: ["English", "Catalog"],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
              title: "Education",
              text:
                  "I have been teaching Englis online since 202 catering to Japanese and Chinese students.",
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
                title: "Interests", text: "Cooking, Mliing, Making Robots."),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
                title: "Profession", text: "Online English Teacher"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
              title: "Specialties",
              Major: [
                "English for Bussiness",
                "Conversational",
                "English for kids",
                "STARTERS",
                "MOVERS"
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: informationCell(
              title: "Specialties",
              customWidget: courseBox(
                title: "Business English",
                imgSrc: "assets/icons/login.svg",
                detail: "The English you ned for your work and career.",
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
              child: commentCell(
                image: 'assets/images/userProfile.jpg',
                date: "2021/01/01",
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
              child: commentCell(
                image: 'assets/images/userProfile.jpg',
                date: "2021/01/01",
              )),
          Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, bottom: 8.0, top: 8.0, right: 16.0),
              child: commentCell(
                image: 'assets/images/userProfile.jpg',
                comment: "She verry good",
                date: "2021/01/01",
              ))
        ],
      ),
    );
  }
}

class buttonBottomCell extends StatelessWidget {
  const buttonBottomCell({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);
  final Icon icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[icon, text],
      ),
    );
  }
}
