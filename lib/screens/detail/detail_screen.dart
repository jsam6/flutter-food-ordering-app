import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_food_menu_app/screens/detail/components/app_bar.dart';
import 'package:flutter_food_menu_app/screens/detail/components/body.dart';

class DetailScreen extends StatelessWidget {
	const DetailScreen({ Key? key }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			backgroundColor: PRIMARY_COLOR,
			appBar: DetailAppBar(context),
			body: Body(),
		);
	}
}
