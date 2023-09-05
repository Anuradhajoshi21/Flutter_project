import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  Cards({Key? key}) : super(key: key);

  final List<CardData> cardDataList = [
    CardData(
      imagePath: 'assets/pizz1.jpeg',
      message2: 'La Pinon Pizza',
      message3: 'Pizza Fast food Beverages',
      message4: '\$200 for one',
      rating: 4.5,
      imagePath1: 'assets/Max.png',
      message: 'Follow all Max safety measures to\n ensure your food is safe',
      iconPath: 'assets/graph-up.png',
    ),
    CardData(
      imagePath: 'assets/burg.jpeg',
      message2: 'Burger Delight',
      message3: 'Burgers Fries Snacks',
      message4: '\$150 for one',
      rating: 4.1,
      imagePath1: 'assets/Max.png',
      message: 'Follow all Max safety measures to\n ensure your food is safe',
      iconPath: 'assets/graph-up.png',
    ),
    CardData(
      imagePath: 'assets/mitha.jpeg',
      message2: 'Sharma Sweet and fast food',
      message3: 'North India',
      message4: '\$180 for one',
      rating: 4.6,
      imagePath1: 'assets/Max.png',
      message: 'Follow all Max safety measures to\n ensure your food is safe',
      iconPath: 'assets/graph-up.png',
    ),
    CardData(
      imagePath: 'assets/tibet.jpeg',
      message2: 'Tibet Kitchen',
      message3: 'Fast Food & Chinese',
      message4: '\$140 for one',
      rating: 4.3,
      imagePath1: 'assets/Max.png',
      message: 'Follow all Max safety measures to\n ensure your food is safe',
      iconPath: 'assets/graph-up.png',
    ),
    CardData(
      imagePath: 'assets/grill.jpeg',
      message2: 'Grills Masters',
      message3: 'Pizza Burger & Fast food',
      message4: '\$80 for one',
      rating: 4.0,
      imagePath1: 'assets/Max.png',
      message: 'Follow all Max safety measures to\n ensure your food is safe',
      iconPath: 'assets/graph-up.png',
    ),
    // Add more CardData instances for each card type
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cardDataList.length,
      itemBuilder: (context, index) {
        return CardWidget(cardData: cardDataList[index]);
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Container(
      //  width: 500,
      //  height: 400,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.only(left: 11, right: 5),
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              width: 400,
              height: 400,
              // color: Colors.white,
              child: GestureDetector(
                  onTap: () {},
                  child: Card(
                    margin: EdgeInsets.all(4),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(10.0), //<-- SEE HERE
                    ),
                    color: Colors.white,
                    elevation: 15,
                    //margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                    child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              cardData.imagePath,
                              width: 400,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Container(
                          //   height: 50,
                          //   width: 50,
                          //   color: Colors.redAccent,
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 6, right: 4),
                                padding: EdgeInsets.all(4),
                                child: Row(
                                  children: [
                                    Text(cardData.message2,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20)),
                                    Spacer(),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: Colors.green.shade900),
                                      height: 25,
                                      width: 60,
                                      //color: Colors.green.shade700,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          // Add spacing between icon and text
                                          Text(
                                            cardData.rating.toString(),
                                            style: TextStyle(
                                              color: Colors
                                                  .white, // Set the color of the text
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(
                                            Icons.star,
                                            color: Colors
                                                .white, // Set the color of the icon
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 6, right: 5),
                                child: Row(
                                  children: [
                                    Text(cardData.message3),
                                    Spacer(),
                                    Text(
                                      cardData.message4,
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            color: Colors.grey.shade200,
                            child: Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 70,
                                  color: Colors.grey.shade200,
                                  child: Image.asset(
                                    cardData.imagePath1,
                                    height: 45,
                                    width: 100,
                                  ),
                                ),
                                Column(children: [
                                  Row(
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          cardData.message,
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Image.asset(
                                          cardData.iconPath,
                                          height: 45,
                                          width: 35,
                                        ),
                                      ])
                                ]),
                              ],
                            ),
                          )
                        ]),
                  ))),
        ],
      ),
    );
  }
}

class CardData {
  final String imagePath;
  final String message;
  final String iconPath;
  final String message2;
  final String message3;
  final String message4;
  final double rating;
  final String imagePath1;

  CardData({
    required this.imagePath,
    required this.message,
    required this.iconPath,
    required this.message2,
    required this.message3,
    required this.message4,
    required this.rating,
    required this.imagePath1,
  });
}
