import 'package:flutter/material.dart';
import 'package:recipes_app/pages/home_page.dart';
class Product extends StatelessWidget {
  final cardName;
  //final imageUrl;
  const Product({Key? key,required this.cardName,/*required this.imageUrl*/}) : super(key: key);

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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 150,
              width: 150,
              color: Colors.blueAccent,
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5,left: 5),
                  child: Text(
                    cardName,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat'
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}
