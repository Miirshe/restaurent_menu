import 'package:flutter/material.dart';

class MenuCards extends StatelessWidget {
  final int price;
  final String menu;
  final String photo;
  const MenuCards({
    required this.price,
    required this.menu,
    required this.photo
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(10),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(90),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/$photo',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            RichText(
            text: TextSpan(
              text: '$menu',
              style: TextStyle(fontSize: 20,color: Colors.black,height: 2),
              children: [
                TextSpan(text: '\nAvailable'),
              ],
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(width: 10,),
          Text('\$$price',style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
