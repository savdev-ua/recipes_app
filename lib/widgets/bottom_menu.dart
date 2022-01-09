import 'package:flutter/material.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/pages/settings.dart';
import 'package:recipes_app/pages/favorites.dart';
import 'package:recipes_app/pages/profile.dart';
import 'package:recipes_app/constants.dart';

class BottomMenu extends StatelessWidget {
  var page=0;
   BottomMenu({Key? key,required this.page}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            onTap:(){ Navigator.pop(context);},
            trailing: Icon(Icons.close,
              color:Color(0xff4F5356) ,),
          ),
          ListTile(
            title: Text('Catalog',
              textAlign: TextAlign.end,
              style:
              (() {
                if (page==1) {
                  return TextStyle(color: kTextColor,
                fontWeight: FontWeight.w700,
                  fontSize: 20.0,);
                }
                return TextStyle(color: kTextColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 20.0,);
              }())

            ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context) => HomePage()));
            },

          ),
          ListTile(
            title: Text('Favorites',
                textAlign: TextAlign.end,
                style:
            (() {
            if (page==2) {
            return TextStyle(color: kTextColor,
            fontWeight: FontWeight.w700,
            fontSize: 20.0,);
            }
            return TextStyle(color: kTextColor,
            fontWeight: FontWeight.w400,
            fontSize: 20.0,);
            }())),
            onTap: ()=>{
              Navigator.push(context,MaterialPageRoute(
                  builder: (context) => Favorites()) )
            },
          ),
          ListTile(
            title: Text('Profile',
                textAlign: TextAlign.end,
                style:
                (() {
                  if (page==3) {
                    return TextStyle(color: kTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,);
                  }
                  return TextStyle(color: kTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,);
                }())
            ),
              onTap: ()=>{
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => Profile()) )
              }
          ),
          ListTile(
            title: Text('Settings',
                textAlign: TextAlign.end,
                style:
                (() {
                  if (page==4) {
                    return TextStyle(color: kTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,);
                  }
                  return TextStyle(color: kTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,);
                }())
            ),
              onTap: ()=>{
                Navigator.push(context,MaterialPageRoute(
                    builder: (context) => Settings()) )
              }
          )
        ],
      ),
    );
  }
}