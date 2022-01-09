import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';

class HomePageText extends StatelessWidget {
  var title = '';
  var subtitle = '';
  HomePageText({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 11.0),
      child: Padding(
        padding: const EdgeInsets.only(left:18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              //textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily:'Montserrat',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: kTextColor
              ),
            ),
            SizedBox(height: 10,),
            Text(
              subtitle,
              //textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily:'Montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: kGrayColor
              ),
            )
          ],
        ),
      ),
    );
  }
}
