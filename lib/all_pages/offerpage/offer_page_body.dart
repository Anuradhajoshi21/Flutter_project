import 'package:eatsome_food/all_pages/offerpage/%20BodyComponents/middle_container.dart';
import 'package:eatsome_food/all_pages/offerpage/%20BodyComponents/top_container.dart';
import 'package:flutter/material.dart';

class OfferBody extends StatelessWidget {
  const OfferBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Top_container(), Middle_container()],
      ),
    );
  }
}
