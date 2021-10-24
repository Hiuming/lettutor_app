import 'package:flutter/material.dart';

import 'header_view.dart';
import 'profile_menu_items.dart';

class Body_profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // TODO: implement build
    return Column(children: <Widget>[
      header(
        name: "NameR",
        email: "example@gmail.com",
        image: "assets/images/userProfile.jpg",
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: profile_Menu_Item(
          icon: Icons.star,
          title: "Feedbacks",
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: profile_Menu_Item(
          icon: Icons.settings,
          title: "Settings",
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: profile_Menu_Item(
          icon: Icons.local_attraction_outlined,
          title: "Plan & Prices",
        ),
      ),
      SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: profile_Menu_Item(
          icon: Icons.info,
          title: "About",
        ),
      ),
      SizedBox(height: 20),
    ]);
  }
}
