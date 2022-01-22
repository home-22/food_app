import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar detailsAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFFFFC61F),
    elevation: 0,
    actions: [
      IconButton(
        icon: SvgPicture.asset("assets/icons/share.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/add.svg"),
        onPressed: () {},
      ),
    ],
  );
}
