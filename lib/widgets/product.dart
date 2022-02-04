import 'package:flutter/material.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/constants.dart';
class Product extends StatelessWidget {
  final cardName;
  final imageUrl;
  const Product({Key? key,required this.cardName,required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
        child: GestureDetector(
          onTap: ()=>{
          Navigator.push(context,MaterialPageRoute(
          builder: (context) => HomePage())
          )
          },
          child:Stack(
            children: <Widget>[
              Container(
                  height: 170,
                  width: 170,
                    child:Image.asset(imageUrl)
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0,left: 15.0),
                  child: Text(
                    cardName,
                    style: TextStyle(
                      fontSize: 16,
                      color: kGrayColor,
                      fontWeight: FontWeight.w500,
                        fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              )
            ],
          )
        ),
      
    );
  }
}
