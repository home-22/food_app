import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details-screen.dart';

import 'package:food_app/screens/home/components/item_cart.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            svgSrc: "assets/icons/burger.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const DetailsScreen(),
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/burger.svg",
            title: "Chinese & Noodles",
            shopName: "Wendys",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const DetailsScreen(),
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/icons/burger.svg",
            title: "Burger & Beer",
            shopName: "MacDonald's",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
