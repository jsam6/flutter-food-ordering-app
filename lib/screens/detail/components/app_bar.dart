import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar DetailAppBar(BuildContext context) {
    return AppBar(
        elevation: 0,
        backgroundColor: PRIMARY_COLOR,
        leading: IconButton(
            icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
            ),
            onPressed: () {},
        ),
        actions: [
            IconButton(
                icon: SvgPicture.asset("assets/icons/share.svg"),
                onPressed: () {},
            ),
            IconButton(
                icon: SvgPicture.asset("assets/icons/more.svg"),
                onPressed: () {},
            ),
        ],
    );
}