import 'package:flutter/material.dart';

class Order_Details extends StatefulWidget {
  const Order_Details({super.key});

  @override
  State<Order_Details> createState() => _Order_DetailsState();
}

class _Order_DetailsState extends State<Order_Details> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Order Details",
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                'Meshi vaishnu Dhaba',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_pin),
                Text(
                  'Industrial Area Sitapura',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'Download Summery',
                    style: TextStyle(color: Colors.red),
                  ),
                  Icon(
                    Icons.download,
                    color: Colors.red,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.greenAccent.shade100),
                height: 40,
                width: double.infinity,
                child: Center(
                    child: Text(
                        'This order with Meshi Vaishnu Dhaba was delivered')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Your Order',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.red)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Mark as Favourite',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        child: Image.asset('cart.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Paneer Butter Masala',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 26,
                    ),
                    child: Text(
                      'Quantity:half',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.green)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text('X'),
                SizedBox(
                  width: 7,
                ),
                Text("\$150"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('\$127.50'),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        child: Image.asset('cart.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Zeera Rice',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 26,
                    ),
                    child: Text(
                      'Quantity:half',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 24,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.green)),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Text('X'),
                SizedBox(
                  width: 7,
                ),
                Text("\$150"),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('\$127.50'),
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            Container(
              //height: 200,
              child: Column(
                children: [
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 9,
                      right: 9,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item Total',
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text('\$320.00'),
                      ],
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Coupon [MaxSafety]',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Spacer(),
                        Text(
                          'You save \$50.24',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),

                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 9,
                        right: 9,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Taxes & Charges',
                            style: TextStyle(fontSize: 18),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isExpanded = !isExpanded;
                              });
                            },
                            child: Icon(
                              isExpanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              size: 40,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Display additional content if expanded
                  if (isExpanded)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery charge for 5 km'),
                              Text('free'),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Taxes'),
                              Text('\$50'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Grand Total',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Spacer(),
                        Text(
                          '\$500.30',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Your total savings',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '\$156',
                                style: TextStyle(color: Colors.blue),
                              ),
                            )
                          ],
                        )),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 13, left: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Order Details",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "ORDER NUMBER",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "2230",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "PAYMENT",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Cash on delivery",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "DATE",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "March 04, 2023 at 02:22 PM",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "PHONE NUMBER",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "9571398xxx",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "DELIVER TO",
                          style: TextStyle(color: Colors.grey, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "1st Block 1st Cross, Rammurthy nagar,\nBangalore-560016",
                          style: TextStyle(color: Colors.black, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Call Meshi Vaishnu Dhaba (0161 2537192) ",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Meshi Vaishnu Dhaba ",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      children: [
                        Text(
                          "Lic. No. 43434534534534",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'confirm');
                            },
                            child: Text(
                              'Repeat Order',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
