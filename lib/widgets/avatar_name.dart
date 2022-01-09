import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class AvatarName extends StatelessWidget {
  var name = '';
  var avatar = '';
  AvatarName({Key? key, required this.name, required this.avatar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child:
                Container(height: 75,width: 75,
                    child: Image.asset(avatar,
                      fit: BoxFit.fill,
                    ))),
        SizedBox(height: 5,),
        Text(
          name,
          style: TextStyle(fontSize: 18,
          fontFamily: 'Comfortaa',
          fontWeight: FontWeight.w700,
          color:kTextColor),
        ),
        SizedBox(height: 15,)
      ],
      //    child: Text('$name'),
    );
  }
}
