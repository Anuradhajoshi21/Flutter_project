import 'package:flutter/material.dart';

class Support extends StatelessWidget {
  const Support({super.key});

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
            "Support",
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Max Safety Delivery Measures',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'This restaurant gollow all 8 Max Safety\nmeasures for Delivery',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'WHO Advisory',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing\nelit. Possimus qui, magnam delectus vero ab blanditiis\nlibero aliquam odio perferendis.',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Staff Manatory Masks',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing\nelit.',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Staff Temperature Checks',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\nPossimus qui..',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '5',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Rider Wear Mask',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\nPossimus qui..',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '6',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Rider Hand Sanitisation',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\nPossimus qui..',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '7',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Contact Tracing',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\nPossimus qui..',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Center(
                      child: Text(
                        '8',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text(
                  'Contactless Delivery',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48),
            child: Text(
              'Lorem, ipsum dolor sit amet consectetur adipisicing elit.\nPossimus qui..',
              style: TextStyle(color: Colors.black54, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(
              thickness: 2,
              color: Colors.grey.shade300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 3),
            child: Text(
                'Lorem ipsum dolor sit amet consectetur adipisicing elit.\nFugiat perferendis explicabo voluptatem nihil placeat\nadipisci tenetur dolorum non, exercitationem enim natus\nsint laudantium esse rem nostrum dolor aliquid vero neque?'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 5),
            child: Text(
                'At Eatsome, your food is in safe hands, and your safety is\nour number one priority'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: double.infinity,
                color: Colors.grey.shade300,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 8),
                      child: Text(
                        'PLEASE NOTE',
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 4),
                      child: Text(
                        'Very rarely one or more safety features may not be available due to\nphysical constranits',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              height: 18, child: Image.asset('noti.png')),
                        ),
                        Text(
                          'Your safety is your topmost priority.',
                          style: TextStyle(fontSize: 10),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20)),
                              height: 30,
                              child: ClipRRect(
                                  child: Image.asset('hand-wash.png'))),
                        )
                      ],
                    )
                  ],
                )),
          ),
        ])));
  }
}
