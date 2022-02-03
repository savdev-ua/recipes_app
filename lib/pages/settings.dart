import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
            page: 4,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text(
                'Settings',
                style: TextStyle(color: kTextColor, fontSize: 30.0),
              ),
            SizedBox(height: 25,),
            Text('Appearance',style: TextStyle(color: kTextColor,fontSize: 22),),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child:Row(
                    children:[
                      Container(
                  height: 30,
                  width: 150,
                  color: kTextColor,
                ),
                      Container(
                        height: 30,
                        width: 150,
                        color: Colors.blue,
                      ),
                ])
              ),
                SizedBox(height: 20.0,),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(color: kTextColor, fontSize: 22.0),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Enable notifications',style: TextStyle(
                      fontSize: 19.0
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Container(height: 10,
                      width: 10,
                      color: Colors.red,),
                    )
                  ],
                )


          ]),
        ));
  }
}
