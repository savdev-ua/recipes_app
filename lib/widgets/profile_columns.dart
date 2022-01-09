import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class ProfileColumns extends StatelessWidget {
  var title = '';
  var iconData = '';
  ProfileColumns({Key? key, required this.title, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(width: 20,),
            Image.asset(iconData),
            SizedBox(width: 20,),
            Text(
             title,
             textAlign: TextAlign.center,
             style: TextStyle(
               fontFamily:'Montserrat',
               fontSize: 16,
               fontWeight: FontWeight.w400,
               color: kGrayColor
             ),
            )
          ],
      ),
    );
  }
}
