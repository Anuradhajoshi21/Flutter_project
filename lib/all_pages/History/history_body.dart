import 'package:flutter/material.dart';

class HistoryPageBody extends StatelessWidget {
  const HistoryPageBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.only(left: 19, right: 50, bottom: 8),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                    border: OutlineInputBorder(),
                    hintText: 'Restaurant name or a dish...',
                    hintStyle: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    color: Colors.grey.shade100,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/mesi.jpeg"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Meshi Vaishnu Dhaba",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                "Industrial Area, Ludhiana",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "25 mins",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "View Menu",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Plain Rice',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Mushroom Matar',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Half',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("04 Mar 2023 at 2.22PM"),
                        Text(
                          "\$101.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Rated"),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.history_outlined,
                            size: 24.0,
                          ),
                          label: Text('Reorder'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    color: Colors.grey.shade100,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/basant.jpeg"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Basant Restaurant",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                "Industrial Area, Jaipur",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "38 mins",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "View Menu",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Bombay Sandwich',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Mix Vegitable',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Full',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("02 Mar 2023 at 11.00AM"),
                        Text(
                          "\$120.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Rated"),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.history_outlined,
                            size: 24.0,
                          ),
                          label: Text('Reorder'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0),
                    blurRadius: 3,
                  ),
                ],
              ),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.topRight,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(13),
                    color: Colors.grey.shade100,
                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset("assets/natural.jpeg"),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sharma Dhaba",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 17),
                              Text(
                                "Vaishali Nagar, Jaipur",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "40 mins",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "View Menu",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_right,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.red,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Grill Sandwich ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Image.asset(
                              "assets/cart.jpeg",
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text.rich(
                                TextSpan(
                                  text: '1x',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                  ),
                                  children: <InlineSpan>[
                                    TextSpan(
                                      text: ' Kaju Carry',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' Full',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("07 Feb 2023 at 7.00PM"),
                        Text(
                          "\$180.00",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                    height: 1,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Rated"),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.history_outlined,
                            size: 24.0,
                          ),
                          label: Text('Reorder'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
