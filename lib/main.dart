import 'package:flutter/material.dart';
import 'package:restaurent_menu/widgets/constants.dart';


void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
        title: Text(
          'Restaurent Menu',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: textColor),
        ),
      ),
      body: Column(
        children: [
          Menu_Cards(),
          Menu_Cards(),
          Menu_Cards(),
          Menu_Cards(),
          Menu_Cards(),
        ],
      ),
    ),
  ));
}

class Menu_Cards extends StatelessWidget {
  const Menu_Cards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(14),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                'assets/images/burger.jpg',
                width: 150,
                height: 100,
              ),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Burger Food',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: bgColor),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      '\$30',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(width: 20,),
                    Icon(Icons.add, size: 40,color: bgColor,)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
