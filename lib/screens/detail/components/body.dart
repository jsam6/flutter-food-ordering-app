import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_food_menu_app/screens/detail/components/item_image.dart';
import 'package:flutter_food_menu_app/screens/detail/components/order_button.dart';
import 'package:flutter_food_menu_app/screens/detail/components/title_price_rating.dart';

class Body extends StatelessWidget {

  const Body({ Key? key }) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return Column(
			children: const <Widget> [
				ItemImage(imageName: "assets/images/burger.png"),
                Expanded(
                    child: ItemInfo(),
                )
			],
		);
	}
}

class ItemInfo extends StatelessWidget {
    const ItemInfo({
        Key? key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
            ),
            child: Column(
                children: [
                    shopName(name: "Macdonalds"),
                    TitlePriceRating( name: "Chees Burger", numOfReviews: 24, rating: 4,price: 15, onRatingChanged: (value) {},),
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.", 
                        style: TextStyle( height: 1.5)
                    ),
                    SizedBox(height: size.height * 0.1),
                    // free space of 10% of total height
                    OrderButton(size: size, press: () {})
                ],
            )
        );
    }

    Row shopName({ String name= ''}) {
        return Row(
            children: [
                Icon(Icons.location_on, color: SECONDARY_COLOR),
                SizedBox(width: 10,),
                Text(name)
            ]
        );
    }
}
