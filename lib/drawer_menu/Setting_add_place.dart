import 'package:flutter/material.dart';

class Place extends StatelessWidget {
  const Place({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'delivery');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.red,
            ),
          ),
          backgroundColor: Colors.white,
          title: Text(
            'My Addresses',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 15),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'notification');
                      },
                      child: Icon(
                        Icons.notifications_none,
                        size: 35,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'drawer');
                      },
                      child: Icon(
                        Icons.menu,
                        color: Colors.black,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Home',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 38,
              ),
              child: Text('Rammurthy nagar, Bangalore-560016,\nAkshya Nagar'),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 38, top: 7),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'cart');
                    },
                    child: Text(
                      'View delivery instructions',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'cart');
                    },
                    child: Icon(
                      Icons.arrow_right,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
