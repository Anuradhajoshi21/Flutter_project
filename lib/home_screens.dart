import 'package:eatsome_food/all_pages/DeliveryPage/Delivery_page_Apbar/delivery.dart';
import 'package:flutter/material.dart';

import 'all_pages/History/history.dart';
import 'all_pages/offerpage/offer.dart';
import 'cartpage/cart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  final screens = [
    DeliveryPage(),
    OfferPage(),
    Cart(),
    HistoryPage(),
    // ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens[index],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(

            // indicatorColor: Colors.blue.shade100,
            labelTextStyle: MaterialStateProperty.all(
                TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
        child: NavigationBar(
            height: 60,
            backgroundColor: Colors.grey,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            //  }

            destinations: [
              NavigationDestination(
                icon: Icon(Icons.delivery_dining_outlined),
                label: 'Delivery',
              ),
              NavigationDestination(
                icon: Icon(Icons.local_offer_outlined),
                label: 'Offer',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_outlined),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.history_outlined),
                label: 'History',
              ),
            ]),
      ),
    );
  }
}
