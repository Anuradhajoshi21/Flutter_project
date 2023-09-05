import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyFlexiableAppBar extends StatelessWidget {
  final double appBarHeight = 60.0;

  const MyFlexiableAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
        padding: EdgeInsets.only(top: statusBarHeight),
        height: statusBarHeight + appBarHeight,
        decoration: const BoxDecoration(
          color: Colors.redAccent,
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Container(
            //height: 50,
            margin: const EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Color.fromARGB(255, 0, 0, 0), blurRadius: 5)
                ]),
            child: const Center(
              child: TextField(
                style: TextStyle(fontSize: 17),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 19, right: 50, bottom: 8),
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  focusedBorder:
                      OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Search Food...',
                  hintStyle: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  suffixIcon: Icon(
                    Icons.mic_none_sharp,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
          Row(children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Text("Max Safety",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 18.0)),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Text(
                      'Fast Delivery ',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18.0),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Text(
                      'Vegetarian',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 18.0),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ]));
  }
}
