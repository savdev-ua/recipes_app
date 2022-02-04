import 'package:flutter/material.dart';
import 'package:recipes_app/constants.dart';
import 'package:recipes_app/widgets/bottom_menu.dart';
import 'package:recipes_app/widgets/homepage_text.dart';
import 'package:recipes_app/widgets/product.dart';

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
            padding: EdgeInsets.all(6),
            child: Container(
              height: 35,
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
          child: BottomMenu(
            page: 1,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: HomePageText(
                    title: 'Hello, Emily!',
                    subtitle: 'What do you want to cook today?'),
              ),
              SizedBox(height: 20,),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Product(cardName: 'Cookies',imageUrl: 'assets/images/cookies.png',),
                    Product(cardName: 'Cakes',imageUrl: 'assets/images/cakes.png',)
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(cardName: 'Pies',imageUrl: 'assets/images/pies.png',),
                  Product(cardName: 'Candies',imageUrl: 'assets/images/candies.png',),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Product(cardName: 'Donuts',imageUrl: 'assets/images/donuts.png',),
                  Product(cardName: 'Ice creams',imageUrl: 'assets/images/ice.png',),
                ],
              )
            ],
          ),
        ));
  }
}
