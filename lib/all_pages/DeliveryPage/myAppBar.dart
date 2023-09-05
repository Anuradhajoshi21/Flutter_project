import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            child: Container(
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Set Location',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20.0),
                ),
              ),
            ),
          ),
          Spacer(),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'notification');
                },
                icon: Icon(Icons.notifications_none),
              ),
              Positioned(
                top: 12,
                right: 10,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                child: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'drawer');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
