import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';

class CategoryItem extends StatelessWidget {
	final String title;
	final bool isActive;
	final VoidCallback press;

	const CategoryItem({
		Key? key, required this.title,  this.isActive = false, required this.press,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return GestureDetector(
			onTap: press,
		child: Padding(
			padding: const EdgeInsets.symmetric(vertical:15, horizontal: 20),
			child: Column(
				children: <Widget>[
					Text(
						title,
						style: TextStyle(color: TEXT_COLOR,
							fontWeight: FontWeight.bold
						)
					),
					if (isActive)
					Container(
						margin: EdgeInsets.symmetric(vertical: 5),
						height: 3,
						width: 22,
						decoration: BoxDecoration(
							color: PRIMARY_COLOR,
							borderRadius: BorderRadius.circular(10)
						),
					)
				]
			),
		),
		);
	}
}
