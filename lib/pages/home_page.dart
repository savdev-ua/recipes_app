import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';
import 'package:recipes_app/widgets/homepage_text.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(color: kGrayColor),
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
                height: 15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                      'assets/images/profile.png',
                  fit: BoxFit.fill,
                  ),
                ),
              ),
          ),
          ),

        endDrawer: Drawer(

        child: BottomMenu(page: 1,),
      ),
      // appBar: AppBar(
      //   title: Text("Log in"),
      // ),
      body: Column(
      children: [
        HomePageText(
            title: 'Hello, Emily!',
            subtitle: 'What do you want to cook today?')
      ],
       )
    );
  }
}