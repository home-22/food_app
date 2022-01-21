import 'package:flutter/material.dart';

import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/app_bar.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/details/components/title_price_rating.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: const [
        ItemImage(
          imgSrc: "assets/images/burger.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopeName(name: "MacDonalds"),
          TitlePriceRating(
            name: "Cheese Burger",
            numOfReviews: 24,
            rating: 4,
            price: 15,
            oneRatingChanged: (value) {},
          ),
          const Text(
              "Nowadays, making printed materials hove bacome fast easy and simple. If you")
        ],
      ),
    );
  }

  Row shopeName({required String name}) {
    return Row(
      children: [
        const Icon(
          Icons.location_on,
          color: kSecundaryColor,
        ),
        const SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
