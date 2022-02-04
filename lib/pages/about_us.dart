import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: kGrayColor),
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
        ),
        endDrawer: Drawer(

          child: BottomMenu(
            page: 3,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(left: 25),
                  child: Text('About us',style: TextStyle(color: kTextColor,fontSize: 25,fontFamily: 'Montserrat',fontWeight: FontWeight.w500)
                  ),
                ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 33.0,right: 37),
              child: Column(
                children: [
                  Text('Hello! We are so glad you stopped by because it probably means that you like sugar, too, which means we like you already.'
                      ' We’ll have to warn you though that while cooking this recipes you may notice you’ve gained a few pounds before setting foot in the kitchen, '
                      'but don’t worry. That’s completely normal.',style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa',height: 1.3,fontWeight: FontWeight.w400),),
                  SizedBox(height: 10,),
                  Text('The recipes you’ll find in this app are the result of our cravings. '
                      'We bake what we feel like eating,'
                      ' which is usually something that has to do with chocolate, '
                      'bananas, peanut butter, or caramel.'
                      ' We are also pretty lazy sometimes,'
                      ' so most of our recipes are simple.',style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa',height: 1.3,fontWeight: FontWeight.w400),)
                ],
              ),
            ),
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/about_us.png',
              height: 150,
              width: 210,),
            ),
          ],
        )
    );
  }
}
