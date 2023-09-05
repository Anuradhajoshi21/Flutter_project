import 'package:flutter/material.dart';

class Dominos extends StatelessWidget {
  const Dominos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
        title: Text(
          "Domino's Pizza",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Container(
            height: 12,
            margin: EdgeInsets.only(top: 8, bottom: 8, right: 10),
            padding: EdgeInsets.only(top: 4),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text.rich(
              TextSpan(
                children: [
                  WidgetSpan(
                    child: Center(
                      child: Icon(
                        Icons.local_offer,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  TextSpan(
                    text: 'Coupon ',
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'drawer');
              },
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              // color: Colors.grey.shade300,
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Domini's Pizza ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, top: 5),
                      child: Text(
                        'Pizza & Fast Food',
                        style: TextStyle(
                            fontSize: 18, color: Colors.grey.shade700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, top: 10),
                      child: Text(
                        'Akshya Nagar 1st Block 1st Cross,\nRammurthy nagar, Bangalore-560016',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                    height: 30,
                                    width: 60,
                                    child: Image.asset('assets/Max.png')),
                                SizedBox(
                                  width: 7,
                                ),
                                Text(
                                  'Know More',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Card(
                      elevation: 4,
                      child: Column(
                        children: [
                          Container(
                            height: 45,
                            width: 90,
                            //color: Colors.blue,
                            child: Container(
                              color: Colors.green,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      '4.2',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 13.0, top: 8),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 24,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 55,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '3986 ',
                                    style: TextStyle(
                                        color: Colors.yellow.shade900),
                                  ),
                                ),
                                Text(
                                  'Reviews',
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5, right: 6),
                      child: Card(
                        elevation: 6,
                        child: Container(
                            height: 30,
                            width: 80,
                            color: Colors.grey.shade100,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                ),
                                Text('38 mins')
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
