import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/components/search_box.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_food_menu_app/screens/home/components/category_list.dart';
import 'package:flutter_food_menu_app/screens/home/components/discount_card.dart';
import 'package:flutter_food_menu_app/screens/home/components/item_list.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
	const Body({ Key? key }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                    SearchBox(onChanged: (value) {},),
                    CategoryList(),
                    ItemList(),
                    DiscountCard(),
                ],
            ),
        );
	}
}
