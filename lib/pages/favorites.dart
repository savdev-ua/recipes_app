import 'package:flutter/material.dart';
import 'package:recipes_app/pages/home_page.dart';
import 'package:recipes_app/pages/register.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';
class Favorites extends StatelessWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         leading: IconButton(
             icon:Icon(Icons.arrow_back),
            onPressed: () { Navigator.pop(context); },
      ),
      ),
        endDrawer: Drawer(
          child: BottomMenu(page: 2),
        ),
      body: Center(
        child: Container(
          child: Image.network('https://cdn.webshopapp.com/shops/94414/files/52440074/flag-of-ukraine.jpg'),
        ),
      ),
    );
  }
}