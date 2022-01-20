import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/home/components/category_item.dart';
import 'package:food_app/screens/home/components/category_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanget: (value) {},
        ),
        const CategoryList(),
        Row(
          children: const [ItemsCard()],
        )
      ],
    );
  }
}

class ItemsCard extends StatelessWidget {
  final String? title, shopName, svgSrc;
  final Function? press;
  const ItemsCard({
    Key? key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 20,
            color: const Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/burger.svg",
                    width: size.width * 0.18,
                  ),
                ),
                const Text("Burger & Beer"),
                const SizedBox(height: 10),
                const Text(
                  "MacDonald's",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
