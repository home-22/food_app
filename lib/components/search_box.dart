import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanget;

  const SearchBox({
    Key? key,
    required this.onChanget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: kSecundaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanget,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Here",
          helperStyle: const TextStyle(
            color: kSecundaryColor,
          ),
        ),
      ),
    );
  }
}
