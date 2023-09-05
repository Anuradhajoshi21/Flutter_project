import 'package:eatsome_food/all_pages/notofications.dart';
import 'package:eatsome_food/all_pages/offerpage/offer.dart';
import 'package:eatsome_food/all_pages/page1.dart';
import 'package:eatsome_food/cartpage/cart.dart';
import 'package:eatsome_food/drawer_menu/Setting_add_place.dart';
import 'package:eatsome_food/drawer_menu/confirm_order.dart';
import 'package:eatsome_food/drawer_menu/coupons.dart';
import 'package:eatsome_food/drawer_menu/dominos_pizza_page.dart';
import 'package:eatsome_food/drawer_menu/drawer.dart';
import 'package:eatsome_food/drawer_menu/enable_location.dart';
import 'package:eatsome_food/drawer_menu/notification_setting.dart';
import 'package:eatsome_food/drawer_menu/setting.dart';
import 'package:eatsome_food/drawer_menu/wallet.dart';
import 'package:eatsome_food/home_screens.dart';
import 'package:flutter/material.dart';

import 'all_pages/DeliveryPage/Delivery_page_Apbar/delivery.dart';
import 'drawer_menu/edit_profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Eatsome',
    initialRoute: 'home_screens',
    routes: {
      'splash': (context) => SplashScreen(),
      'home_screens': (context) => HomeScreen(),
      'page1': (context) => Page1(),
      'delivery': (context) => DeliveryPage(),
      'notification': (context) => Notification_Page(),
      'editprofile': (context) => Edit_Profile(),
      'drawer': (context) => DrawerBar(),
      'wallet': (context) => Wallet(),
      'couponspage': (context) => Coupons_page(),
      'enable': (context) => Enable_Location(),
      'offer': (context) => OfferPage(),
      'setting': (context) => SettingPage(),
      'cart': (context) => Cart(),
      'notification_setting': (context) => Notification_Setting(),
      'dominos': (context) => Dominos(),
      'place': (context) => Place(),
      'confirm': (context) => ConfirmOrder(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0.0; // Initial opacity

  @override
  void initState() {
    super.initState();
    // Trigger the fade-in animation after a delay
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        opacity = 1.0; // Set opacity to 1 for fade-in
      });
      Future.delayed(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacementNamed('home_screens');
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.white, // Customize your splash screen background color
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: Duration(seconds: 1), // Animation duration
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Your splash screen content, such as a logo or animation, goes here
              Image.asset(
                'assets/logo.png',
                scale: 2,
              ), // Replace with your image

              // Text(
              //   'My App',
              //   style: TextStyle(
              //     fontSize: 24,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
