import 'package:flutter/material.dart';

class Section_Tile extends StatelessWidget {
  const Section_Tile({super.key, required this.title, required this.press});
  final String title;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: EdgeInsets.all(4),
            //height: 40,
            width: 60,
            child: Image.asset('assets/discount.png')),
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        TextButton(
            onPressed: press,
            child: Text(
              'See all',
              style: TextStyle(color: Colors.red.shade600),
            ))
      ],
    );
  }
}
