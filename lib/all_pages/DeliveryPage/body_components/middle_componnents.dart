import 'package:flutter/material.dart';

class Dishes extends StatelessWidget {
  Dishes({super.key});

  final List<DishesData> dishesDataList = [
    DishesData(
      image: 'assets/d1.png',
      title: 'Sweets',
    ),
    DishesData(
      image: 'assets/d2.png',
      title: 'Burger',
    ),
    DishesData(
      image: 'assets/d3.png',
      title: 'Pizza',
    ),
    DishesData(
      image: 'assets/d4.png',
      title: 'Noodles',
    ),
    DishesData(
      image: 'assets/d5.png',
      title: 'Rolls',
    ),
    DishesData(
      image: 'assets/d6.png',
      title: 'Samosa',
    ),
    DishesData(
      image: 'assets/d7.png',
      title: 'Healthy',
    ),
    DishesData(
      image: 'assets/d8.png',
      title: 'Fries',
    ),

    // Add more CardData instances for each card type
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            //color: Colors.white,
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Eat what makes you happy",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return DishesWidget(dishesData: dishesDataList[index]);
            },
            itemCount: dishesDataList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class DishesWidget extends StatelessWidget {
  final DishesData dishesData;
  DishesWidget({required this.dishesData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'search');
      },
      child: Container(
        width: 90,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              dishesData.image,
              height: 70,
              width: 70,
            ),
            SizedBox(height: 5),
            Text(
              dishesData.title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class DishesData {
  final String image;
  final String title;

  DishesData({required this.image, required this.title});
}
