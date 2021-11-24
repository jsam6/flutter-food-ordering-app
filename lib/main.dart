import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_food_menu_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
		title: 'Food App Menu',
		theme: ThemeData(
			primaryColor: PRIMARY_COLOR,
			scaffoldBackgroundColor: Colors.white,
			textTheme: TextTheme(
				bodyText1: TextStyle(color: SECONDARY_COLOR),
				bodyText2: TextStyle(color: SECONDARY_COLOR),
			),
		),
		home: HomeScreen(),
		);
	}
}
