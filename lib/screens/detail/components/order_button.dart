import 'package:flutter/material.dart';
import 'package:flutter_food_menu_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size, required this.press,
  }) : super(key: key);

  final Size size;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size.width * 0.8,
        decoration: BoxDecoration(
            color: PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Material(
            color: Colors.transparent,
            child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          SvgPicture.asset("assets/icons/bag.svg"),
                          SizedBox(width: 10),
                          Text("Order Now", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold))
                      ],
                  ),
                ),
            ),
        ),

    );
  }
}
