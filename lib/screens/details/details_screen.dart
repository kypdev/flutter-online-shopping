import 'package:flutter/material.dart';
import 'package:flutter_online_shop_app_ui/models/Product.dart';
import 'package:flutter_online_shop_app_ui/screens/details/components/body.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
        ),
        color: Colors.white,
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
            color: Colors.white,
          ),
          color: kTextColor,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }
}
