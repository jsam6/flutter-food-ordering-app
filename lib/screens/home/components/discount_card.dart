import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
	Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
	return Padding(
		padding: const EdgeInsets.symmetric(horizontal: 20),
		child: Column(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: <Widget> [
				Text("Offers & Discounts",
				style: TextStyle(fontWeight: FontWeight.bold, color: TEXT_COLOR),),
				Container(
					margin: EdgeInsets.symmetric(vertical: 20),
					width: double.infinity, // double infinity means it covers the available width
					height: 166,
					decoration: BoxDecoration(
						borderRadius: BorderRadius.circular(10),
						image: DecorationImage(
							fit: BoxFit.fill,
							image: AssetImage("assets/images/beyond-meat-mcdonalds.png")
						)
					),
					child: DecoratedBox(
						decoration: BoxDecoration(
							borderRadius: BorderRadius.circular(10),
							gradient: LinearGradient(
								colors: [
									PRIMARY_COLOR.withOpacity(0.7),
									Color(0xFFFF961F).withOpacity(0.7),
								]
							)
						),
						child: Padding(
						  padding: const EdgeInsets.all(20),
						  child: Row(
							  children: [
								  Expanded(child: SvgPicture.asset("assets/icons/macdonalds.svg")),
								  Expanded(
									  child: RichText(
										  text: TextSpan(
											  style: TextStyle(color: Colors.white),
											  children: const [
												  TextSpan(
													  text: "Get Discount of \n",
													  style: TextStyle(fontSize: 16)
												  ),
												  TextSpan(
													  text: "30% \n",
													  style: TextStyle(
														  fontSize: 43,
														  fontWeight: FontWeight.bold,
													  )
												  ),
												  TextSpan(
													  text:"at Macdonald's on your first order & Instant cashback",
													  style: TextStyle( fontSize: 10)
												  )
											  ]
										  )
									  )
								  )
							  ],
						  ),
						),
					)
				)
			],
		),
	);
  }
}
