import 'package:flutter/material.dart';



class CategoryCard extends StatelessWidget {
  final String src;
  final String title;
  final Function press;
  const CategoryCard({
    Key? key,
    required this.src,

    required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding:EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              //: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(src),
                  Spacer(),
                  Center(child: Text(title, style: TextStyle(fontSize: 15)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}