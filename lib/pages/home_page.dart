import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        endDrawer: Drawer(
        child: BottomMenu(page: 1,),
      ),
      // appBar: AppBar(
      //   title: Text("Log in"),
      // ),
      body: Center(
      child: Text('Home page'),
      )
    );
  }
}