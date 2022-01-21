import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';
import 'package:food_app/screens/details/components/app_bar.dart';
import 'package:food_app/screens/details/components/item_image.dart';
import 'package:food_app/screens/home/components/body.dart';

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
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                height: 66,
                width: 65,
                color: kPrimaryColor,
                child: Text(
                  "\$15",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
            ],
          )
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
