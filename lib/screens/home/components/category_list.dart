import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
	const CategoryList({
		Key? key,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return SingleChildScrollView(
			scrollDirection: Axis.horizontal,
			child: Row(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					CategoryItem(title: "Combo Meal", isActive: true, press: () {}),
					CategoryItem(title: "Ala Cart", press: () {}),
					CategoryItem(title: "Snacks", press: () {}),
					CategoryItem(title: "Desserts", press: () {}),
					CategoryItem(title: "Drinks", press: () {}),
				],
			),
		);
	}
}
