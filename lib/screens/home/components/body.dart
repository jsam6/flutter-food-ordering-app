import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/components/search_box.dart';
import 'package:flutter_food_menu_app/screens/home/components/category_list.dart';

class Body extends StatelessWidget {
	const Body({ Key? key }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Column(
			children: <Widget>[
				SearchBox(onChanged: (value) {},),
				CategoryList()
			],
		);
	}
}
