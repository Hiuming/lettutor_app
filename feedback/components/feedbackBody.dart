import 'package:flutter/material.dart';
import 'package:lettutor_project/teacher-list/components/teacher_detail_cell/commentCell.dart';
import 'package:lettutor_project/feedback/model/feedbacksModel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Feedbacks> feedBacks = [
      Feedbacks(
          imgSrc: 'assets/images/userProfile.jpg',
          date: '2021-01-01',
          comment: "happy to teach you"),
      Feedbacks(
          imgSrc: 'assets/images/userProfile.jpg',
          date: '2021-01-01',
          comment: "happy to teach you"),
      Feedbacks(
          imgSrc: 'assets/images/userProfile.jpg',
          date: '2021-01-01',
          comment: "happy to teach you"),
      Feedbacks(
          imgSrc: 'assets/images/userProfile.jpg',
          date: '2021-01-01',
          comment: "happy to teach you"),
      Feedbacks(
          imgSrc: 'assets/images/userProfile.jpg',
          date: '2021-01-01',
          comment: "happy to teach you"),
    ];

    // TODO: implement build
    return ListView.builder(
        itemCount: feedBacks.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 8.0, right: 8, top: 16, bottom: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: commentCell(
              image: feedBacks[index].imgSrc,
              date: feedBacks[index].date,
              comment: feedBacks[index].comment,
            ),
          );
        });
  }
}

// ListView.builder(
//               itemCount: chatUsers.length,
//               shrinkWrap: true,
//               padding: EdgeInsets.only(top: 16),
//               physics: NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) {
//                 return ConversationList(
//                   name: chatUsers[index].name,
//                   messageText: chatUsers[index].messageText,
//                   imageUrl: chatUsers[index].imageURL,
//                   time: chatUsers[index].time,
//                   isMessageRead: (index == 0 || index == 3) ? true : false,
//                 );
//               },
//             ),
