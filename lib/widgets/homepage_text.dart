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
      child:  Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily:'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: kTextColor
                ),
              ),
              SizedBox(height: 10,),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily:'Montserrat',
                    fontSize: 16,
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
