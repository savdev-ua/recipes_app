import 'package:flutter/material.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      endDrawer: Drawer(
        child: BottomMenu(page:4),
      ),
      body: Text('Hello World',
      style:TextStyle(
        fontSize: 30.0
      ),)
    );
  }
}