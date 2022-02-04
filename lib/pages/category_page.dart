import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';

import '../constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

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
          page: 1,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children:[
            Align(
              alignment: Alignment.centerLeft,
                child: Text('Cookies',style: TextStyle(fontSize: 27))),
            SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Container(
                height: 90,
                width:500,
                color: Colors.red,
              )
            ]
          ),
        ),
      ),
    );
  }
}
