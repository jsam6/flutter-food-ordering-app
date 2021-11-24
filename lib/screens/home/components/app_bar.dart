import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_food_menu_app/constants.dart';

AppBar HomeAppBar(BuildContext context) {
   return AppBar(
		leading: IconButton(
			icon: SvgPicture.asset('assets/icons/menu.svg'),
			onPressed: () {},
		),
		backgroundColor: Colors.white,
		elevation: 0,
		title: Center(
		  child: RichText(
		  	text: TextSpan(
		  		style: TextStyle(color:SECONDARY_COLOR, fontWeight: FontWeight.bold, fontSize: 17),
		  		children: const [
		  			TextSpan(text: 'Quick', style: TextStyle(color:SECONDARY_COLOR)),
		  			TextSpan(text: 'ie ', style: TextStyle(color:PRIMARY_COLOR)),
		  		]
		  	),
		  ),
		),
		actions: <Widget>[IconButton(icon:SvgPicture.asset('assets/icons/notification.svg'), onPressed: (){})],
	);
}