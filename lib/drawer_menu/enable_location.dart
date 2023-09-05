import 'package:flutter/material.dart';

class Enable_Location extends StatelessWidget {
  const Enable_Location({Key? key});

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
          "My Address",
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
      body: ListView(
        physics: BouncingScrollPhysics(), // Use BouncingScrollPhysics
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.2), // Spacer
          Image.asset('assets/pin.png'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'We dont have your\n      location, yet!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
          ),
          Center(
            child: Text(
              'Set your location to start exploring\n          restaurants near you',
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 10),
          // Added to provide some spacing
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.red,
              ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'delivery');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.my_location,
                        color: Colors.white,
                        size: 24,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Enable Device Location',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(color: Colors.red)
                  //color: Colors.white,
                  ),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'delivery');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.my_location,
                        color: Colors.white,
                        size: 24,
                      ),
                      Text(
                        'Enter Your Location Manually',
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
