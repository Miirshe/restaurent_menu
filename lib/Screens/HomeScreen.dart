import 'package:flutter/material.dart';
import 'package:restaurent_menu/widgets/MenuCards.dart';
import 'package:restaurent_menu/widgets/constants.dart';

class HomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          title: Text(
            '🍔 Restaurants Menu',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        body: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.elliptical(110, 80),
                          bottomLeft: Radius.elliptical(110, 80),
                          topRight: Radius.elliptical(110, 80),
                          bottomRight: Radius.elliptical(110, 80),
                        ),
                      ),
                      margin: EdgeInsets.all(10),
                      elevation: 10,
                      child: Container(
                          padding: EdgeInsets.all(20),
                          child: Center(
                            child: Image.asset(
                              'assets/images/cover.jpeg',
                              width: 230,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              MenuCards(menu: 'Pizza fish Burger ',price: 13,photo: 'burger.jpg',),
              MenuCards(menu: 'Pizza meal dinner', price: 10,photo: 'pizzamealdinner.jpg',),
              MenuCards(menu: 'Pizza large medium', price: 15,photo: 'cover.jpeg',),
              MenuCards(menu: 'Pizza chicken burger', price: 10,photo: 'burger.jpg',),
            ],
          ),
        ),
      ),
    );
  }
}
