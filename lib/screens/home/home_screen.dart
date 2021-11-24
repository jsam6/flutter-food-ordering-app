import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/screens/home/components/app_bar.dart';
import 'package:flutter_food_menu_app/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: HomeAppBar(context),
			body: Body()
		);
	}
}
