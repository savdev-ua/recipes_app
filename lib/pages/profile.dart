import 'package:flutter/material.dart';
import 'package:recipes_app/pages/cuper_test.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/pages/register.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/avatar_name.dart';
import 'package:recipes_app/widgets/profile_columns.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0,
          shadowColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: kGrayColor,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'Edit',
                      style: TextStyle(fontSize: 15, color: kGrayColor),
                    ),
                  ),
                )),
          ]),
      body: Center(
        child:  Container(
        child:Column(
          children: <Widget>[
            AvatarName(
                name: 'Emily Berimort', avatar: 'assets/images/profile.png'),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
              child: ProfileColumns(iconData:'assets/images/info.png',title: 'About us',),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
              child: ProfileColumns(iconData:'assets/images/message.png',title: 'Contact us',),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
              child: ProfileColumns(iconData:'assets/images/info.png',title: 'Log out',),
            ),

          ],
        )
        )
            // children: <Widget>[]
            ),

    );
  }
}
