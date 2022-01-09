import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class AvatarName extends StatelessWidget {
  var name = '';
  var avatar = '';
  AvatarName({Key? key, required this.name, required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 460,
          child: Column(
                children: <Widget>[
      ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(avatar,
              fit: BoxFit.fill,
              height: 100,
              width: 100,
            ),
      ),
      SizedBox(
            height: 10,
      ),
      Text(
            name,
            style: TextStyle(
                color: kTextColor,
                fontFamily: 'Comfortaa',
                fontSize: 15,
                fontWeight: FontWeight.w700),
      ),
      SizedBox(
            height: 20,
      ),
    ]),
        ),
        );
  }
}
