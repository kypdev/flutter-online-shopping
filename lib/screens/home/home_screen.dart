import 'package:flutter/material.dart';
import 'package:flutter_online_shop_app_ui/constants.dart';
import 'package:flutter_online_shop_app_ui/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black54,
      ),
      onPressed: () {
        debugPrint('back button');
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: kTextColor,
        ),
        color: kTextColor,
        onPressed: () {},
      ),
    ],
  );
}
