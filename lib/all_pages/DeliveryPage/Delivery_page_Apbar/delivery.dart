import 'package:eatsome_food/all_pages/DeliveryPage/body_components/middle_componnents.dart';
import 'package:eatsome_food/all_pages/DeliveryPage/body_components/top_component.dart';
import 'package:flutter/material.dart';

import '../body_components/last_component..dart';
import 'my_app_bar.dart';
import 'myflexibleappbar.dart';

class DeliveryPage extends StatefulWidget {
  const DeliveryPage({super.key});

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.redAccent,
          title: MyAppBar(),
          pinned: true,
          expandedHeight: 190.0,
          flexibleSpace: FlexibleSpaceBar(
            background: MyFlexiableAppBar(),
          ),
        ),

        // Your existing SliverToBoxAdapter
        SliverToBoxAdapter(
          child: Column(
            children: [
              Top_Part(),
              Container(
                child: Dishes(),
              ),
              Container(
                height: 500,
                // width: 500, // Adjust this value according to your needs
                child: Cards(),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
