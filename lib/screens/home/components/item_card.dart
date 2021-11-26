import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCard extends StatelessWidget {
	final String title, shopName, svgSrc;
	final VoidCallback press;

	const ItemCard({
		Key? key, required this.title, required this.shopName, required this.svgSrc, required this.press,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		Size size = MediaQuery.of(context).size;
		return Container(
			margin: EdgeInsets.only(left: 20, right: 15, top:20, bottom: 20),
			decoration: BoxDecoration(
				color: Colors.white,
				borderRadius: BorderRadius.circular(10),
				boxShadow: [
					BoxShadow(
						offset: Offset(0, 4),
						blurRadius: 20,
						color: Color(0xFFB0CCE1).withOpacity(0.32)
					)
				]
			),
			child: Material(
				color: Colors.transparent,
				child: InkWell(
					onTap: press,
					child: Padding(
						padding: EdgeInsets.all(20),
						child: Column(
							children: [
								Container(
									padding: EdgeInsets.all(25),
									margin: EdgeInsets.only(bottom: 15),
									decoration: BoxDecoration(
										color: PRIMARY_COLOR.withOpacity(0.13),
										shape: BoxShape.circle,
									),
									child: SvgPicture.asset(svgSrc, width: size.width * 0.18)
									// Means it is 18% of the total width
								),
								Text(title),
								SizedBox(height: 10,),
								Text(shopName, style: TextStyle(fontSize: 13))
							],
						),
					),
				),
			),
		);
	}
}
