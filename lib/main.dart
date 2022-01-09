import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/category_card.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/pages/register.dart';
import 'package:recipes_app/pages/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: "Comfortaa",
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Image.asset('assets/images/first.png'),
            Text(
              'Cooking Desserts at\nHome is Easy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.0,
                  color: kTextColor,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Montserrat'),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 340,
              alignment: Alignment.center,
              child: Text(
                'Here are many super easy baking recipes\n '
                'you need to try if you\'re a beginner baker\n'
                ' or just like desserts',
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Comfortaa'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,MaterialPageRoute(
                  builder: (context) => Register()) )
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: 210.0,
                    color: Color(0xffc7d9d7),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xff7A3B38),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Comfortaa'),
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                  text: 'Have an account?',
                  style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontFamily: 'Comfortaa'),
                  children: [
                    WidgetSpan(
                      child: GestureDetector(
                          child: Text(
                            ' Log in',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color(0xff7A3B38),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Comfortaa'),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          }),
                    ),
                  ]),
            )
          ],
        ),
      ),
    ));
  }
}
