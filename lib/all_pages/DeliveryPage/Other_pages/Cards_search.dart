import 'package:flutter/material.dart';

class Cards_search extends StatelessWidget {
  Cards_search({Key? key}) : super(key: key);

  final List<CardData> cardDataList = [
    CardData(
      titleImage: 'assets/piz1.jpeg',
      titleText: 'La Pinon Pizza',
      subtitle: 'Pizza Fast food Beverages',
      price: '\$200 for one',
      rating: 4.2,
      maxImage: 'assets/Max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'assets/graph-up.png',
    ),
    CardData(
      titleImage: 'assets/pizza2.jpeg',
      titleText: 'Pizza Hut',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 3.8,
      maxImage: 'assets/Max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'assets/graph-up.png',
    ),

    CardData(
      titleImage: 'assets/pizza3.jpeg',
      titleText: 'Dabbu Pizza',
      subtitle: 'North India',
      price: '\$100 for one',
      rating: 4.5,
      maxImage: 'assets/Max.png',
      comment: 'Follow all Max safety measures to\n ensure your food is safe',
      iconImage: 'assets/graph-up.png',
    ),

    CardData(
      titleImage: 'assets/pasta.jpeg',
      titleText: 'Castle Grill',
      subtitle: 'Burgers Fries Snacks',
      price: '\$150 for one',
      rating: 4.1,
      maxImage: 'assets/Max.png',
      comment: '4300+ orders placed form here',
      iconImage: 'assets/graph-up.png',
    ),
    CardData(
      titleImage: 'assets/sandwich.jpeg',
      titleText: 'BBC',
      subtitle: 'Pizza, Burger, Fast Food',
      price: '\$150 for one',
      rating: 4.2,
      maxImage: 'assets/Max.png',
      comment: '2175+ orders placed from',
      iconImage: 'assets/graph-up.png',
    ),
    CardData(
      titleImage: 'assets/grill2.jpeg',
      titleText: '9/12 Dining Restaurants',
      subtitle: 'North Indian,chines,fast..',
      price: '\$200 for one',
      rating: 3.4,
      maxImage: 'assets/Max.png',
      comment: '2175+ orders placed from',
      iconImage: 'assets/graph-up.png',
    ),
    // Add more CardData instances for each card type
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cardDataList.length,
        itemBuilder: (context, index) {
          return Expanded(child: CardWidget(cardData: cardDataList[index]));
        },
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final CardData cardData;

  CardWidget({required this.cardData});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: 400,
                        // height: 400,
                        // color: Colors.white,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, 'dominos');
                          },
                          child: Card(
                            // margin: EdgeInsets.all(4),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: Colors.white,
                              ),
                              borderRadius:
                                  BorderRadius.circular(10.0), //<-- SEE HERE
                            ),
                            color: Colors.white,
                            elevation: 15,
                            //margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      cardData.titleImage,
                                      width: 400,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    margin:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(cardData.titleText,
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20)),

                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.green.shade900),
                                              height: 25,
                                              width: 50,
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
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.white,
                                                    size:
                                                        18, // Set the color of the icon
                                                  ),
                                                ],
                                              ),
                                            ) //rating container
                                          ],
                                        ),
                                        SizedBox(height: 8),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              cardData.subtitle,
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                            // Spacer(),
                                            Text(
                                              cardData.price,
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                        // ),
                                        SizedBox(
                                          height: 5,
                                        ),

                                        //Subtitle and price
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.grey.shade200,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(8),
                                          height: 70,
                                          color: Colors.grey.shade200,
                                          child: Image.asset(
                                            cardData.maxImage,
                                            height: 35,
                                            width: 95,
                                          ),
                                        ),
                                        Column(children: [
                                          Row(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.start,
                                              // mainAxisAlignment:
                                              //     MainAxisAlignment
                                              //         .center,
                                              children: [
                                                Text(
                                                  cardData.comment,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Image.asset(
                                                  cardData.iconImage,
                                                  height: 45,
                                                  width: 35,
                                                ),
                                              ])
                                        ]),
                                      ],
                                    ),
                                  )
                                ]),
                          ),
                        )),
                  ],
                ),
              )
            ]));
  }
}

class CardData {
  final String titleImage;
  final String comment;
  final String iconImage;
  final String titleText;
  final String subtitle;
  final String price;
  final double rating;
  final String maxImage;

  CardData({
    required this.titleImage,
    required this.comment,
    required this.iconImage,
    required this.titleText,
    required this.subtitle,
    required this.price,
    required this.rating,
    required this.maxImage,
  });
}
