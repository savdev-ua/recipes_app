import 'package:flutter/material.dart';
import 'package:recipes_app/pages/cuper_test.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/pages/register.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/avatar_name.dart';

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
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.info_outlined),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'About us',
                      style: TextStyle(fontSize: 16, fontFamily: 'Comfortaa'),
                    ),
                  ]),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
              child: Row(children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.info_outlined),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'About us',
                  style: TextStyle(fontSize: 16, fontFamily: 'Comfortaa'),
                ),
              ]),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()))
              },
              child: Row(children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.info_outlined),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'About us',
                  style: TextStyle(fontSize: 16, fontFamily: 'Comfortaa'),
                ),
              ]),
            )
          ],
        )
        )
            // children: <Widget>[]
            ),

    );
  }
}
