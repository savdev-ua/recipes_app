import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/pages/login.dart';
class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
          children: <Widget>[
            SizedBox(height: 200,),
            Text('Register',style:TextStyle(
                fontSize: 25.0,
              color: kTextColor,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat'),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Your name',
                hintStyle: TextStyle(
                  fontFamily: 'Comfortaa',
                  fontSize: 15.0
                )
              )),
          ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Email address',
                      hintStyle: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15.0
                      )
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Password',
                     hintStyle: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 15.0
                      )
                  )),
            ),
            SizedBox(height: 20.0,),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: GestureDetector(
                  onTap: () => {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) =>HomePage()) )
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
      ),
    );
  }
}