import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
          Column(
            children: [
              Row(
                children: [
                  Container(
                    margin:const EdgeInsets.only(
                    left: 15,
                    top: 5,
                      bottom: 0,
          ),
                    child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.arrow_back),
                        SizedBox(width: 1,),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushNamed(context,'home_screens');

                          },
                            child:
                        Text("Search List",style: TextStyle(fontSize: 22,),)),
                        SizedBox(width: 160,),
                       IconButton(onPressed: (){},
                         icon: Icon(Icons.notification_add_outlined),
                       ),
                        SizedBox(width: 1,),
                        IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                      ],
                    ),
                  ),
        ],
      ),
                  SizedBox(height: 0,),
                  Container(
                    child: Column(mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                    Container(
                    //height: 50,
                    margin: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 65,
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

                          contentPadding: EdgeInsets.only(left: 19, right: 50, bottom: 8),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
                          hintText: 'Pizza',
                          hintStyle:
                          TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
                          prefixIcon: Icon(Icons.search,color: Colors.red,),
                          suffixIcon: Icon(
                            Icons.mic_none_sharp,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
        ),
      ]
      ),
                  ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Restaurants',
                      style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.w700),),
                    Card(

                    )
                  ],
                ),
              )
                ],
              ),

          ),


    );
  }
}

